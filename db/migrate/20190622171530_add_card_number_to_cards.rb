class AddCardNumberToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :card_number, :string, null: false, unique: true
  end
end
