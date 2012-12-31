# == Schema Information
#
# Table name: hotel_rooms
#
#  id                      :integer          not null, primary key
#  hotel_id                :integer
#  name                    :string(255)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  all_count               :integer
#  area                    :string(255)
#  price_summer_from       :integer
#  price_summer_to         :integer
#  price_high_season_from  :integer
#  price_high_season_to    :integer
#  price_winter_from       :integer
#  price_winter_to         :integer
#  type_id                 :integer
#  places_count            :integer
#  additional_places_count :integer
#

require 'spec_helper'

describe Hotel::Room do
  pending "add some examples to (or delete) #{__FILE__}"
end
