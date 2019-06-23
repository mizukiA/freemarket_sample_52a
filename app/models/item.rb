class Item < ApplicationRecord
  has_many :item_images
  belongs_to :brand, optional: true
  belongs_to :category, optional: true
  belongs_to :user, optional: true
  belongs_to :saler, class_name: "User", optional: true
  belongs_to :buyer, class_name: "User", optional: true
  accepts_nested_attributes_for :item_images
end
