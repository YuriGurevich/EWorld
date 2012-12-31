# == Schema Information
#
# Table name: hotel_room_types
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Hotel::Room::Type < ActiveRecord::Base
  attr_accessible :name
end
