class RemoveBadColumnsInTodos < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :assigned
    remove_column :todos, :user_id
    remove_column :todos, :assigned_id
  end
end


