class ItemImage < ApplicationRecord
  belongs_to :item, optional: true
  mount_uploader :image_url, ImageUploader
end
