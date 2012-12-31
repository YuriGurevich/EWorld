# == Schema Information
#
# Table name: hotel_cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Hotel::City < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 255 }

  has_and_belongs_to_many :tickets
  has_and_belongs_to_many :moderators, class_name: User::Moderator
  default_scope order: 'position'

  attr_accessible :name

  acts_as_list
  strip_attributes

  liquid_methods :name

  def to_s
    name
  end
end
