class CamelCaseColumnToSnakeCaseColumn2 < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :users, :commentIds, :comment_ids
    rename_column :sub_forums, :numberOfPosts, :number_of_posts
    rename_column :sub_forums, :postIds, :post_ids
    rename_column :sub_forums, :adminIds, :admin_ids
    rename_column :posts, :authorId, :author_id
    rename_column :posts, :createTime, :create_time
    rename_column :posts, :commentIds, :comment_ids
  end

  def self.down
    rename_column :users, :comment_ids, :commentIds
    rename_column :sub_forums, :number_of_posts, :numberOfPosts
    rename_column :sub_forums, :post_ids, :postIds
    rename_column :sub_forums, :admin_ids, :adminIds
    rename_column :posts, :author_id, :authorId
    rename_column :posts, :create_time, :createTime
    rename_column :posts, :comment_ids, :commentIds
  end
end
