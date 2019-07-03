class AddTokenToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :token, :integer
  end
end
