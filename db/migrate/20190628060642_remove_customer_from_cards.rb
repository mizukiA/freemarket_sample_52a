class RemoveCustomerFromCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :customer, :integer
  end
end
