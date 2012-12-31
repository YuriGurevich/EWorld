# == Schema Information
#
# Table name: hotel_images
#
#  id                  :integer          not null, primary key
#  hotel_id            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  description         :string(255)
#  attach_file_name    :string(255)
#  attach_content_type :string(255)
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#

require 'spec_helper'

describe Hotel::Image do
  pending "add some examples to (or delete) #{__FILE__}"
end
