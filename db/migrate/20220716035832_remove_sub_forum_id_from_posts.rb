class RemoveSubForumIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :sub_forum_id, :string
  end
end
