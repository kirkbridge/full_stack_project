class StaticPage < ApplicationRecord
  validates_presence_of :description, :customer_message, :contact_email

  validates_format_of :contact_email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                      message: 'please use a valid email address'
end
