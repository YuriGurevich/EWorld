# == Schema Information
#
# Table name: hotel_filter_items
#
#  id        :integer          not null, primary key
#  filter_id :integer
#  name      :string(255)
#

class Hotel::Filter::Item < ActiveRecord::Base
  belongs_to :filter
  attr_accessible :name, :filter_id
end
