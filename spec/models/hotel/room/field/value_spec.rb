# == Schema Information
#
# Table name: hotel_room_field_values
#
#  id       :integer          not null, primary key
#  field_id :integer
#  room_id  :integer
#  value    :string(255)
#

require 'spec_helper'

describe Hotel::Room::Field::Value do
  pending "add some examples to (or delete) #{__FILE__}"
end
