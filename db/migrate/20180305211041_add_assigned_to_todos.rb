class AddAssignedToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :assigned, :integer
  end
end
