class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :emails
      t.string :post_cards
      t.string :letters_flyers
      t.string :calls
      t.integer :amount
      t.belongs_to :user, foreign_key: true
      t.belongs_to :contact, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.belongs_to :todo, foreign_key: true

      t.timestamps
    end
  end
end
