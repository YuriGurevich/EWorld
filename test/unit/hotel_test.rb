# == Schema Information
#
# Table name: hotels
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  description          :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  reviews_count        :integer          default(0)
#  city_id              :integer
#  phone                :string(255)
#  email                :string(255)
#  site                 :string(255)
#  route_description    :text
#  iin                  :string(255)
#  kpp                  :string(255)
#  ogrn                 :string(255)
#  legal_address        :string(255)
#  post_address         :string(255)
#  street_number        :string(255)
#  way_file_name        :string(255)
#  way_content_type     :string(255)
#  way_file_size        :integer
#  way_updated_at       :datetime
#  booking_id           :integer
#  booking_description  :string(255)
#  published            :boolean
#  street_id            :integer
#  min_age_children     :integer          default(0)
#  adjacent_territory   :text
#  min_price_winter     :integer          default(0)
#  min_price_summer     :integer          default(0)
#  checkout_time        :string(255)
#  documents            :string(255)
#  agency_commission    :integer          default(0)
#  rooms_count          :integer          default(0)
#  images_count         :integer          default(0)
#  all_rooms_count      :integer          default(0)
#  special_offers_count :integer          default(0)
#  map_latitude         :float
#  map_longitude        :float
#  street               :string(255)
#

require 'test_helper'

class HotelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
