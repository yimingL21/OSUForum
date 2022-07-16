json.extract! sub_forum, :id, :name, :description, :number_of_posts, :post_id, :admin_ids, :created_at, :updated_at
json.url sub_forum_url(sub_forum, format: :json)
