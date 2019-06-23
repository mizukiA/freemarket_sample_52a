class AddRateToItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :size, :string
    add_column :items, :size, :string, null: true
  end
end
