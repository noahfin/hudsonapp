class CreateAssignedTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :assigned_todos do |t|
      t.integer :user_id
      t.integer :todo_id

      t.timestamps
    end
  end
end
