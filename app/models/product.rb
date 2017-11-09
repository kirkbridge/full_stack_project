class Product < ApplicationRecord
  #attr_accessible :image
  belongs_to :category
  mount_uploader :image, ImageUploader

  validates :title, :price, presence: true
  validates :price, numericality:true

end
