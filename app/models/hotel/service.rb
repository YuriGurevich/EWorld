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

class Hotel::Service < ActiveRecord::Base
  has_many :values
  default_scope order: 'position'

  attr_accessible :include_to_print, :name, :default_value, :default, :only_signed, :multiline, :filter_item_id
  attr_accessible :position

  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 255 }

  acts_as_list

  def self.values_for_hotel hotel_id
    joins "left join hotel_service_values on hotel_services.id = hotel_service_values.service_id and hotel_service_values.hotel_id = #{hotel_id}"
  end

  def self.published
    where(include_to_print: true)
  end

  after_destroy do
    Value.delete_all "service_id=#{id}"
  end
end
