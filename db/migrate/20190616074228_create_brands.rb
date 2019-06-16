class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :brand, null: false
      t.integer :parent_id
      t.timestamps
    end
  end
end
