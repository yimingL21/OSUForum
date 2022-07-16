class CreateSubForums < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_forums do |t|
      t.string :name
      t.text :description
      t.integer :number_of_posts
      t.text :post_id
      t.text :admin_ids

      t.timestamps
    end
  end
end
