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

class Hotel::Room::Field < ActiveRecord::Base
  attr_accessible :default_value, :name, :only_signed, :multiline, :include_to_print
  attr_accessible :position
  default_scope order: 'position'

  acts_as_list

  after_destroy do
    Value.delete_all "field_id=#{id}"
  end
end
