class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.boolean :admin
      t.text :introduction
      t.text :postIds
      t.text :commentIds

      t.timestamps
    end
  end
end