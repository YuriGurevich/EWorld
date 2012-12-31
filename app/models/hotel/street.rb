# == Schema Information
#
# Table name: hotel_streets
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Hotel::Street < ActiveRecord::Base
  attr_accessible :name
end
