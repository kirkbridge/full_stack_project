class Product < ApplicationRecord
  #attr_accessible :image
  belongs_to :category
  has_many :line_items
  has_many :orders, :through => :line_items

  mount_uploader :image, ImageUploader

  validates :title, :price, presence: true
  validates :price, numericality:true

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
