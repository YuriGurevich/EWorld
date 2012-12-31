# encoding: utf-8
# == Schema Information
#
# Table name: hotel_room_field_values
#
#  id       :integer          not null, primary key
#  field_id :integer
#  room_id  :integer
#  value    :string(255)
#


class Hotel::Room::Field::Value < ActiveRecord::Base
  attr_accessible :field_id, :value

  belongs_to :field
  belongs_to :room

  validates :value, length: { maximum: 255 }
end
