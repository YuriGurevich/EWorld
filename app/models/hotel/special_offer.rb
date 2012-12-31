# == Schema Information
#
# Table name: hotel_special_offers
#
#  id          :integer          not null, primary key
#  hotel_id    :integer
#  from        :date
#  to          :date
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string(255)
#

class Hotel::SpecialOffer < ActiveRecord::Base
  belongs_to :hotel
  attr_accessible :description, :from, :hotel_id, :to, :title

  scope :active, where('hotel_special_offers.to >= now()')

  validates :title, :description, length: { minimum: 2, maximum: 255 }
end
