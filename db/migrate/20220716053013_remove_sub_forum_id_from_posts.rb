class RemoveSubForumIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :subforum_id, :string
  end
end
