class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :post_id, :post_ids
  end
end
