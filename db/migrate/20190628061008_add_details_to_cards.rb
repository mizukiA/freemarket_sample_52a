class AddDetailsToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :customer, :integer
    add_column :cards, :token, :integer
  end
end
