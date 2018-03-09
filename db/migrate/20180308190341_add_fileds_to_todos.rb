class AddFiledsToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :leads, :boolean
    add_column :todos, :projects, :boolean
    add_column :todos, :marketing, :boolean
    add_column :todos, :properties, :boolean
    add_column :todos, :personal, :boolean
  end
end
