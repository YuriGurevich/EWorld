# == Schema Information
#
# Table name: hotel_room_list_values
#
#  id         :integer          not null, primary key
#  room_id    :integer
#  list_id    :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hotel::Room::List::Value < ActiveRecord::Base
  attr_accessible :item_id, :list_id

  belongs_to :room
  belongs_to :list
  belongs_to :item

  validates :item_id, :list_id, presence: true
end
