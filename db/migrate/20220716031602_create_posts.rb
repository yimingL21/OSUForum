class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :titile
      t.text :author_id
      t.datetime :create_time
      t.text :content
      t.string :sub_forum_id
      t.text :comment_Ids

      t.timestamps
    end
  end
end
