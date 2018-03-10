class RemoveUserIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :user_id, :integer
  end
end
