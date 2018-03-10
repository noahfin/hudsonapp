class CreateVisitors < ActiveRecord::Migration[5.1]
  def change
    create_table :visitors do |t|
      t.string :token
      t.integer :user_id
      t.string :email
      t.string :name
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
