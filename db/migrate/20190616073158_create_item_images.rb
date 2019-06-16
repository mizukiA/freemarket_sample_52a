class CreateItemImages < ActiveRecord::Migration[5.0]
  def change
    create_table :item_images do |t|
      t.string :image_url
      t.integer :item_id, foreign_key: true
      t.timestamps
    end
  end
end
