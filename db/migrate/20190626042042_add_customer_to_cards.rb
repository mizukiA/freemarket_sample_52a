class AddCustomerToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :customer, :integer
  end
end
