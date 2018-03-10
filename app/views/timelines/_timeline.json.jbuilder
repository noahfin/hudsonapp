json.extract! timeline, :id, :event, :author, :user_id, :created_at, :updated_at
json.url timeline_url(timeline, format: :json)
