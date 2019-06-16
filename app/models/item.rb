class Item < ApplicationRecord
  has_many :item_images
  belongs_to :brand
  belongs_to :category
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
end
