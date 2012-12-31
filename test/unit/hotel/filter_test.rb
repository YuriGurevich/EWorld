# == Schema Information
#
# Table name: hotel_filters
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  position         :integer
#  show_in_search   :boolean
#  include_to_print :boolean          default(FALSE)
#

require 'test_helper'

class Hotel::FilterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
