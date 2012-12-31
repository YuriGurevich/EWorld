# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  email                   :string(255)      default(""), not null
#  encrypted_password      :string(255)      default(""), not null
#  reset_password_token    :string(255)
#  reset_password_sent_at  :datetime
#  remember_created_at     :datetime
#  sign_in_count           :integer          default(0)
#  current_sign_in_at      :datetime
#  last_sign_in_at         :datetime
#  current_sign_in_ip      :string(255)
#  last_sign_in_ip         :string(255)
#  password_salt           :string(255)
#  failed_attempts         :integer          default(0)
#  unlock_token            :string(255)
#  locked_at               :datetime
#  role                    :string(255)
#  type                    :string(255)
#  is_partner              :boolean
#  new_messages_count      :integer          default(0)
#  save_hotel_search_query :boolean          default(TRUE)
#  hotel_search_query      :text             default("")
#

class User::Agency < User
  attr_accessible :email, :password, :is_partner, :profile_attributes

  scope :only_partners, conditions: { is_partner: true }

  has_many :tickets

  def self.sort_column_names
    %w[profiles.city profiles.company_name profiles.agreement profiles.name is_partner]
  end

  def tickets
    Ticket.where("agency_id=#{id}").all
  end

  after_create do |record|
    if User.admin and (message = EmailTemplate.render('create_agency', { 'user' => record }))
      TemplateMailer.delay.send_template User.admin.email, message
    end
  end

  after_destroy do |record|
    if User.admin and (message = EmailTemplate.render('delete_agency', { 'user' => record }))
      TemplateMailer.delay.send_template User.admin.email, message
    end

    record.tickets.each do |t|
      t.destroy
    end
  end
end
