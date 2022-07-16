class AddSubForumRefToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :sub_forum, null: false, foreign_key: true
  end
end
