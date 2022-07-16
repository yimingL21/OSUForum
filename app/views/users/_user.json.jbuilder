json.extract! user, :id, :name, :email, :password, :admin, :introduction, :post_id, :comment_Ids, :created_at, :updated_at
json.url user_url(user, format: :json)
