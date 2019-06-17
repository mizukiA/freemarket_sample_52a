class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :condition, null: false
      t.string :delivery_fee, null: false
      t.string :area, null: false
      t.string :delivery_date, null: false
      t.integer :price, null: false
      t.integer :buyer_id, foreign_key: true
      t.integer :saler_id, foreign_key: true
      t.integer :baby_category_id, foreign_key: true
      t.integer :child_brand_id, foreign_key: true
      t.string :size, null: false
      t.timestamps
    end
  end
end
