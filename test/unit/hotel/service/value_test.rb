# == Schema Information
#
# Table name: hotel_service_values
#
#  id         :integer          not null, primary key
#  service_id :integer
#  hotel_id   :integer
#  value      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class Hotel::Service::ValueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
