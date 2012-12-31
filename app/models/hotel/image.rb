# == Schema Information
#
# Table name: hotel_images
#
#  id                  :integer          not null, primary key
#  hotel_id            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  description         :string(255)
#  attach_file_name    :string(255)
#  attach_content_type :string(255)
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#

class Hotel::Image < ActiveRecord::Base
  has_attached_file :attach, :styles => { :medium => '360x268>', :thumb => '160x120>' }
  strip_attributes

  belongs_to :hotel, counter_cache: true
  attr_accessible :hotel_id, :attach, :description

  validates :description, length: { maximum: 255 }
end
