class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :phone_number_2
      t.string :fax
      t.string :website
      t.boolean :owns
      t.boolean :rents
      t.string :primary_idustry
      t.string :secondary_idustry
      t.integer :SF_occupying
      t.string :email
      t.text :notes
      t.string :sic_code
      t.boolean :data_checked
      t.string :type_of_location
      t.string :listing_agent
      t.string :suit
      t.integer :total_employees
      t.string :year_founded
      t.text :follow_up
      t.boolean :active
      t.string :references
      t.string :user
      t.string :references
      t.string :contact
      t.string :references
      t.string :project
      t.string :references
      t.string :todo
      t.string :references

      t.timestamps
    end
  end
end
