# == Schema Information
#
# Table name: documents
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  attach_file_name    :string(255)
#  attach_content_type :string(255)
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  description         :text
#  position            :integer
#

require 'spec_helper'

describe Document do
  pending "add some examples to (or delete) #{__FILE__}"
end
