class RemoveChildBrandIdFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :child_brand_id, :integer
  end
end
