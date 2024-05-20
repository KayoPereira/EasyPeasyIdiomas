class AddColunsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :identification_number, :string
    add_column :users, :phone, :string
  end
end
