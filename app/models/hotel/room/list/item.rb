# == Schema Information
#
# Table name: hotel_room_list_items
#
#  id         :integer          not null, primary key
#  list_id    :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hotel::Room::List::Item < ActiveRecord::Base
  attr_accessible :name

  belongs_to :list

  validates :name, presence: true
end
