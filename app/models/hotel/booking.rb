# == Schema Information
#
# Table name: hotel_bookings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hotel::Booking < ActiveRecord::Base
  attr_accessible :name
  strip_attributes
end
