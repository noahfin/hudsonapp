class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.belongs_to :contact, foreign_key: true
      t.belongs_to :property, foreign_key: true
      t.belongs_to :todo, foreign_key: true
      t.belongs_to :marketing, foreign_key: true

      t.timestamps
    end
  end
end
