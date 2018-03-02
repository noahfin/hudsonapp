class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :prefex
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :title
      t.string :cell_number
      t.string :business_email
      t.string :personal_email
      t.string :Additional_email
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
