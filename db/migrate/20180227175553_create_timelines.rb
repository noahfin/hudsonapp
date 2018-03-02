class CreateTimelines < ActiveRecord::Migration[5.1]
  def change
    create_table :timelines do |t|
      t.string :event
      t.string :author
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end