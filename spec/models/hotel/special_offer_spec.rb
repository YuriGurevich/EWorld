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

require 'spec_helper'

describe Hotel::SpecialOffer do
  pending "add some examples to (or delete) #{__FILE__}"
end
