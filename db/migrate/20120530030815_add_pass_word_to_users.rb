class AddPassWordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encrypted_password, :string
  end
end
