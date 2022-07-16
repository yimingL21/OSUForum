json.extract! user, :id, :name, :email, :password, :admin, :introduction, :postIds, :commentIds, :created_at, :updated_at
json.url user_url(user, format: :json)
