json.extract! project, :id, :street_number, :street_name, :city, :state, :zipcode, :zipcode_ext, :county, :latitude, :property_address, :known_as, :notes, :user_id, :company_id, :contact_id, :created_at, :updated_at
json.url project_url(project, format: :json)
