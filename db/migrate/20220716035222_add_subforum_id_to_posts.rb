class AddSubforumIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :subforum_id, :string
  end
end
