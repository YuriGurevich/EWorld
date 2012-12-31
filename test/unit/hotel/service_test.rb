# == Schema Information
#
# Table name: hotel_services
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  default          :boolean
#  default_value    :string(255)
#  only_signed      :boolean
#  multiline        :boolean
#  position         :integer
#  include_to_print :boolean
#  filter_item_id   :integer
#

require 'test_helper'

class Hotel::ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
