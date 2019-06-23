class RemoveTelFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :tel, :string
  end
end
