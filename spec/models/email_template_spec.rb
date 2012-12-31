# == Schema Information
#
# Table name: email_templates
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  subject    :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe EmailTemplate do
  pending "add some examples to (or delete) #{__FILE__}"
end
