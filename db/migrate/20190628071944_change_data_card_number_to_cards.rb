class ChangeDataCardNumberToCards < ActiveRecord::Migration[5.0]
  def change
    change_column :cards, :card_number, :string
  end
end
