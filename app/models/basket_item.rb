# == Schema Information
#
# Table name: rooms_users
#
#  user_id :integer
#  room_id :integer
#

class BasketItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :room, class_name: Hotel::Room

  attr_accessible :room_id

  scope :mine,  lambda { where(user_id: User.current_user.id) }

  before_save do |record|
    record.user_id = User.current_user.id
  end

  def self.table_name
    :rooms_users
  end
end
