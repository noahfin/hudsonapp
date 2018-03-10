class AddUserIdnToStoredLocatiion < ActiveRecord::Migration[5.1]
  def change
        add_column :stored_locations, :user_id, :integer
  end
end
