class AddSizeAvailableToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :size_available, :string
    add_column :properties, :year_built, :string
    add_column :properties, :min_divisible, :string
    add_column :properties, :Description, :text
    add_column :properties, :lease_type, :string
    add_column :properties, :lease_term, :string
    add_column :properties, :highlight_1, :string
    add_column :properties, :highlight_2, :string
    add_column :properties, :highlight_3, :string
    add_column :properties, :highlight_4, :string
    add_column :properties, :highlight_5, :string
  end
end
