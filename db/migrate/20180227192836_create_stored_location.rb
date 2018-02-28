class CreateStoredLocation < ActiveRecord::Migration[5.1]
  def change
    create_table :stored_locations do |t|
      t.string :token
    end
  end
end
