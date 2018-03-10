class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.boolean :finished
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
