# == Schema Information
#
# Table name: hotel_room_fields
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  default_value    :string(255)
#  only_signed      :boolean
#  multiline        :boolean
#  include_to_print :boolean
#  position         :integer
#

require 'spec_helper'

describe Hotel::Room::Field do
  pending "add some examples to (or delete) #{__FILE__}"
end
