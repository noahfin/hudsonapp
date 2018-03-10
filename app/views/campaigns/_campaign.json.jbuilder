json.extract! campaign, :id, :emails, :post_cards, :letters_flyers, :calls, :amount, :user_id, :contact_id, :project_id, :todo_id, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
