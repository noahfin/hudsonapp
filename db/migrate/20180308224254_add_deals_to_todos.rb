class AddDealsToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :deals, :boolean
  end
end
