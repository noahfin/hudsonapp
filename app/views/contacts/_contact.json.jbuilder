json.extract! contact, :id, :prefex, :first_name, :middle_name, :last_name, :suffix, :title, :cell_number, :business_email, :personal_email, :Additional_email, :notes, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
