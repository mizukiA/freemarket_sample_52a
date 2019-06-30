class RemoveImageUrlFromItemImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :item_images, :image_url, :string
    add_column :item_images, :image_url, :string, null: false
  end
end
