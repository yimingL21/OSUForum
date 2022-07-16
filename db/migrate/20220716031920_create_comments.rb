class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :respondent_id
      t.datetime :create_time
      t.text :content
      t.string :post_id
      t.string :frame_id

      t.timestamps
    end
  end
end
