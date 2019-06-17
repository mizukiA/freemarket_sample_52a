# frozen_string_literal: true

class DeviseCreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :card_number, null: false, unique: true
      t.string :expiration_year, null: false
      t.string :expiration_month, null: false
      t.string :security_code, null: false
      ## Database authenticatable
      # t.string :email,              null: false, default: ""
      # t.string :encrypted_password, null: false, default: ""

      # ## Recoverable
      # t.string   :reset_password_token
      # t.datetime :reset_password_sent_at

      # ## Rememberable
      # t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    # add_index :cards, :email,                unique: true
    # add_index :cards, :reset_password_token, unique: true
    # add_index :cards, :confirmation_token,   unique: true
    # add_index :cards, :unlock_token,         unique: true
  end
end
