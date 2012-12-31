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

class User < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable, :encryptable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_attributes
  attr_accessible :email, :password
  attr_accessible :save_hotel_search_query
  attr_accessible :hotel_search_query

  has_and_belongs_to_many :rooms, class_name: Hotel::Room
  has_many :basket_items

  has_one :profile

  accepts_nested_attributes_for :profile, update_only: true

  liquid_methods :email, :profile, :admin?, :moderator?, :agency?

  def self.admin
    User.find_by_id 1
  end

  #TODO: remove this method
  def admin?
    type == nil || type == 'User::Moderator'
  end

  def super_admin?
    type == nil
  end

  def moderator?
    type == 'User::Moderator'
  end

  def agency?
    type == 'User::Agency'
  end

  def profile
    super || build_profile
  end

  def human_type
    I18n.t (type || 'User::Super').underscore
  end

  def self.current_user
    Thread.current[:user]
  end

  def self.current_user=(user)
    Thread.current[:user] = user
  end

  before_destroy do |record|
    record.profile.delete
  end
end
