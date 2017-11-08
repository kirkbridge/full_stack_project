class Product < ApplicationRecord
  #attr_accessible :image
  belongs_to :category
  mount_uploader :image, ImageUploader
end
