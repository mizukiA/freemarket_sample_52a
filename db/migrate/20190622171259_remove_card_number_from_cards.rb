class RemoveCardNumberFromCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :card_number, :integer
  end
end
