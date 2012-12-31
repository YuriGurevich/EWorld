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

require 'spec_helper'

describe Hotel::Room::List::Value do
  pending "add some examples to (or delete) #{__FILE__}"
end
