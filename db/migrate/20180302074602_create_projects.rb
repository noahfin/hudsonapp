class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :zipcode_ext
      t.string :county
      t.string :latitude
      t.string :property_address
      t.string :known_as
      t.text :notes
      t.references :user, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
