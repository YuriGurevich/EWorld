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

class User::Moderator < User
  has_and_belongs_to_many :cities, class_name: ::Hotel::City
  has_many :messages
  has_many :tickets

  attr_accessible :email, :password, :city_ids
  attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_attributes, :city_ids

  def all_cities
    Hotel::City.all
  end

  # Ugly method
  def open_tickets_in_mine_regions sort = nil
    Ticket.uniq.joins("INNER JOIN cities_tickets ON tickets.id = cities_tickets.ticket_id and cities_tickets.city_id IN (#{cities.pluck(:id).join(',')})").order(sort).without_admin.opened.all
  end

  def open_tickets_in_mine_regions_count
    cities.map { |city| city.tickets.without_admin.pluck(:id) }.flatten.uniq.size
  end

  def mine_ticket_count
    Ticket.where(moderator_id: id).count
  end

  after_create do |record|
    if User.admin and (message = EmailTemplate.render('create_moderator', { 'user' => record }))
      TemplateMailer.delay.send_template User.admin.email, message
    end
  end

  after_destroy do |record|
    if User.admin and (message = EmailTemplate.render('delete_moderator', { 'user' => record }))
      TemplateMailer.delay.send_template User.admin.email, message
    end

    record.tickets.each do |t|
      t.destroy
    end
  end
end
