class User < ApplicationRecord
  has_many :addresses
  has_many :orders

  validates :user_name, :password,:first_name, :last_name, presence: true

  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                      message: 'please use a valid email address'
end
