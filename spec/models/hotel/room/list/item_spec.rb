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

require 'spec_helper'

describe Hotel::Room::List::Item do
  pending "add some examples to (or delete) #{__FILE__}"
end
