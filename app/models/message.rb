# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  ticket_id  :integer
#  text       :text
#  edited     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  attr_accessible :edited, :text, :ticket_id, :user_id

  belongs_to :ticket
  belongs_to :user

  has_and_belongs_to_many :have_read_users, class_name: User, join_table: :messages_have_read_users

  validates :text, presence: true, length: { minimum: 5, maximum: 1000 }

  default_scope order: 'created_at'

  liquid_methods :text, :created_at, :ticket, :user

  def read!
    return if User.current_user == user
    return if User.current_user.super_admin?
    return if User.current_user != ticket.agency and User.current_user != ticket.moderator

    unless have_read_users.exists? User.current_user
      have_read_users << User.current_user
      ticket.increment! User.current_user.agency? ? :agency_new_messages_count : :admin_new_messages_count, -1
      User.current_user.increment! :new_messages_count, -1
    end
  end

  def read?
    return false if User.current_user.super_admin?
    return have_read_users.exists? ticket.agency if User.current_user.moderator?
    return have_read_users.exists? ticket.moderator if User.current_user.agency?
  end

  before_create do |record|
    record.user_id = User.current_user.id
  end

  after_create do |record|
    user = record.ticket.send record.user.agency? ? :moderator : :agency
    user.increment! :new_messages_count if user
    record.ticket.increment! User.current_user.agency? ? :admin_new_messages_count : :agency_new_messages_count
    record.ticket.update_attribute :last_message_created_at, record.created_at

    if record.user
      if record.user.agency? and ticket.has_moderator?
        if message = EmailTemplate.render('create_message', { 'message' => record }) and record.ticket.moderator.profile.notified
          TemplateMailer.delay.send_template record.ticket.moderator.email, message
        end
      end

      if record.user.moderator?
        if message = EmailTemplate.render('create_message', { 'message' => record }) and record.ticket.agency.profile.notified
          TemplateMailer.delay.send_template record.ticket.agency.email, message
        end
      end
    end
  end

  self.per_page = 10
end
