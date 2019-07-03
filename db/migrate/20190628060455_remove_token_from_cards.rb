class RemoveTokenFromCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :token, :integer
  end
end
