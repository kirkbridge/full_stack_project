class Order < ApplicationRecord
  belongs_to :user

  validates :status, :customer_id, presence: true
end
