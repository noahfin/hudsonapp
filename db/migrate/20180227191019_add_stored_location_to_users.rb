class AddStoredLocationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :stored_location, :string
  end
end
