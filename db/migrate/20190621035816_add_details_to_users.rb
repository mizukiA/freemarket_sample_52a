class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :family_name_kana, :string, null: false
    add_column :users, :last_name_kana, :string, null: false
    add_column :users, :birth_year, :string, null: false
    add_column :users, :birth_month, :string, null: false
    add_column :users, :birth_day, :string, null: false
    add_column :users, :tel, :string, null: false
  end
end
