# == Schema Information
#
# Table name: profiles
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  phones            :string(255)
#  skype             :string(255)
#  icq               :string(255)
#  company_name      :string(255)
#  address           :string(255)
#  agreement         :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#  description       :text
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  notified          :boolean          default(TRUE)
#  city              :string(255)
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
