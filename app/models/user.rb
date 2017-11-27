class User < ApplicationRecord
  before_save {self.email = email.downcase}

  has_many :addresses
  has_many :orders

  validates :password,:first_name, :last_name, presence: true
  validates :password, length: {minimum: 8}

  validates_uniqueness_of :email, message: 'Email is already in use'
  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                      message: 'must be a valid email address'

  has_secure_password
end
