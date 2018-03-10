class AddFildsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :title, :string
    add_column :users, :address, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company, :string
  end
end
