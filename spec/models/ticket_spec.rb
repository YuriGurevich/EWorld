# == Schema Information
#
# Table name: tickets
#
#  id                        :integer          not null, primary key
#  agency_id                 :integer
#  moderator_id              :integer
#  message_id                :integer
#  closed                    :boolean
#  messages_count            :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  admin_new_messages_count  :integer          default(0)
#  agency_new_messages_count :integer          default(0)
#  last_message_created_at   :datetime
#  company_name              :string(255)
#  closer_id                 :integer
#

require 'spec_helper'

describe Ticket do
  pending "add some examples to (or delete) #{__FILE__}"
end
