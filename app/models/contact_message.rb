# == Schema Information
#
# Table name: contact_messages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  subject    :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContactMessage < ActiveRecord::Base
  apply_simple_captcha

  liquid_methods :name, :email, :subject, :body

  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, allow_blank: true

  attr_accessible :name, :email, :subject, :body, :captcha, :captcha_key

  default_value_for :email do
    User.current_user.email if User.current_user
  end

  default_value_for :name do
    User.current_user.profile.name if User.current_user
  end

  after_save do |record|
    if message = EmailTemplate.render('contact', { 'message' => record })
      TemplateMailer.delay.send_template User.admin.email, message
    end
  end
end
