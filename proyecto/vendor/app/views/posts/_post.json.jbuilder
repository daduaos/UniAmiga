json.extract! post, :id, :title, :body, :count, :created_at, :updated_at
json.url post_url(post, format: :json)
