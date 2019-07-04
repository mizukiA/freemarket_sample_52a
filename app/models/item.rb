class Item < ApplicationRecord
  has_many :item_images
  has_many :comments
  belongs_to :brand, optional: true
  belongs_to :category, optional: true
  belongs_to :user, optional: true
  belongs_to :saler, class_name: "User", optional: true
  belongs_to :buyer, class_name: "User", optional: true
  accepts_nested_attributes_for :item_images, allow_destroy: true

  validates :name,
    presence: { message: "商品名を入力してください"}
  validates :description,
    presence: { message: "商品説明を入力してください"}
  validates :condition,
    presence: { message: "商品の状態を入力してください"}
  validates :delivery_fee,
    presence: { message: "発送料を入力してください"}
  validates :area,
    presence: { message: "発送地域を入力してください"} 
  validates :delivery_date,
    presence: { message: "発送までの日数を入力してください"}
  validates :price,
    presence: { message: "料金を入力してください"}
    
  validates :item_images,
    presence: { message: "画像を入力してください"}
  
end
