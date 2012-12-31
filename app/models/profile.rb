# == Schema Information
#
# Table name: profiles
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  phones            :string(255)
#  skype             :string(255)
#  icq               :string(255)
#  company_name      :string(255)
#  address           :string(255)
#  agreement         :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#  description       :text
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  notified          :boolean          default(TRUE)
#  city              :string(255)
#

class Profile < ActiveRecord::Base
  has_attached_file :logo, styles: { thumb: "150x200>" }, default_url: '/assets/partner.png'

  belongs_to :user
  has_many :notes

  attr_accessible :name, :skype, :icq, :phones, :company_name, :address, :agreement, :logo, :notified, :city
  attr_accessible :description

  validates :name, presence: true, length: { minimum: 5, maximum: 255 }

  liquid_methods :name, :company_name, :skype, :phones, :address, :icq, :agreement

  PROTECTED_ATTRIBUTES = %w(description company_name agreement)

  def can_change? name
    not PROTECTED_ATTRIBUTES.include? name.to_s or User.current_user.admin?
  end

  after_save do |record|
    if record.user.agency? and record.company_name_changed?
      record.user.tickets.each do |t|
        t.company_name = record.company_name
      end
    end
  end

  before_save do |record|
    return unless User.current_user

    unless User.current_user.admin?
      PROTECTED_ATTRIBUTES.each do |name|
        raise CanCan::AccessDenied if record.changes.include? name
      end
    end
  end
end
