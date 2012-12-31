# == Schema Information
#
# Table name: hotel_filter_values
#
#  id        :integer          not null, primary key
#  filter_id :integer
#  hotel_id  :integer
#  item_id   :integer
#

require 'test_helper'

class Hotel::Filter::ValueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
