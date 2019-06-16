class RemoveBabyCategoryIdFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :baby_category_id, :integer
  end
end
