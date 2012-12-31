# == Schema Information
#
# Table name: hotel_room_photos
#
#  id                  :integer          not null, primary key
#  room_id             :integer
#  attach_file_name    :string(255)
#  attach_content_type :string(255)
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#  description         :string(255)
#

class Hotel::Room::Photo < ActiveRecord::Base
  has_attached_file :attach, :styles => { :medium => '360x268>', :thumb => '160x120>' }

  belongs_to :room, validate: true

  attr_accessible :attach, :room_id, :description
end
