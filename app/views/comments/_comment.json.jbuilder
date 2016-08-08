json.extract! comment, :id, :username, :date, :content, :user_id, :recipe_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)