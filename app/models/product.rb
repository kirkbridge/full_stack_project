class Product < ApplicationRecord
  #attr_accessible :image
  belongs_to :category
  mount_uploader :image, ImageUploader

  validates :title, :price, presence: true
  validates :price, numericality:true

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

end
