# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  email                   :string(255)      default(""), not null
#  encrypted_password      :string(255)      default(""), not null
#  reset_password_token    :string(255)
#  reset_password_sent_at  :datetime
#  remember_created_at     :datetime
#  sign_in_count           :integer          default(0)
#  current_sign_in_at      :datetime
#  last_sign_in_at         :datetime
#  current_sign_in_ip      :string(255)
#  last_sign_in_ip         :string(255)
#  password_salt           :string(255)
#  failed_attempts         :integer          default(0)
#  unlock_token            :string(255)
#  locked_at               :datetime
#  role                    :string(255)
#  type                    :string(255)
#  is_partner              :boolean
#  new_messages_count      :integer          default(0)
#  save_hotel_search_query :boolean          default(TRUE)
#  hotel_search_query      :text             default("")
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end