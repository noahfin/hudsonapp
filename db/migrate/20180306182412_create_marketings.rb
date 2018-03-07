class CreateMarketings < ActiveRecord::Migration[5.1]
  def change
    create_table :marketings do |t|
      t.string :list
      t.string :name
      t.integer :amount
      t.belongs_to :user, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.belongs_to :todo, foreign_key: true

      t.timestamps
    end
  end
end
