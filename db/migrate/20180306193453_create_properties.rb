class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :street_num
      t.string :street_name
      t.string :city
      t.string :state
      t.string :zip
      t.string :zipcode_ext
      t.string :county
      t.string :latitude
      t.string :longitude
      t.string :address
      t.string :listing_broker
      t.boolean :available
      t.boolean :on_market
      t.boolean :expired_listing
      t.string :contact
      t.belongs_to :user, foreign_key: true
      t.belongs_to :contact, foreign_key: true
      t.belongs_to :marketing, foreign_key: true
      t.belongs_to :campaign, foreign_key: true
      t.belongs_to :todo, foreign_key: true

      t.timestamps
    end
  end
end
