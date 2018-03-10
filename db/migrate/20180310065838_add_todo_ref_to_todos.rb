class AddTodoRefToTodos < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :todo, foreign_key: true

  end
end

