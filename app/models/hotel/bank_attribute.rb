# == Schema Information
#
# Table name: hotel_bank_attributes
#
#  id              :integer          not null, primary key
#  hotel_id        :integer
#  name            :string(255)
#  bik             :string(255)
#  corr_account    :string(255)
#  current_account :string(255)
#

class Hotel::BankAttribute < ActiveRecord::Base
  attr_accessible :bik, :corr_account, :current_account, :name
  strip_attributes
end
