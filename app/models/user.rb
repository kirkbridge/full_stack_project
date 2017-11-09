class User < ApplicationRecord
  has_many :addresses
  has_many :orders

  validates :user_name, :password,:first_name, :last_name, presence: true
end
