class RemovePostIdFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :post_id, :string
  end
end
