class AddAssignedIdToTodos < ActiveRecord::Migration[5.1]
   def change
    add_column :todos, :assigned_id, :integer
  end
end
