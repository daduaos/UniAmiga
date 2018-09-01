json.extract! api_rest, :id, :title, :body, :count, :created_at, :updated_at
json.url api_rest_url(api_rest, format: :json)
