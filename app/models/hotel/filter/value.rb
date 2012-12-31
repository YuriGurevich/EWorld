# == Schema Information
#
# Table name: hotel_filter_values
#
#  id        :integer          not null, primary key
#  filter_id :integer
#  hotel_id  :integer
#  item_id   :integer
#

class Hotel::Filter::Value < ActiveRecord::Base
  belongs_to :item
  belongs_to :filter

  attr_accessible :filter_id, :hotel_id, :name, :item_id
end
