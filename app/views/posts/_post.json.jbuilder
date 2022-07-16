json.extract! post, :id, :titile, :author_id, :create_time, :content, :sub_forum_id, :comment_Ids, :created_at, :updated_at
json.url post_url(post, format: :json)
