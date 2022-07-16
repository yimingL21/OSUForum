class CamelCaseColumnToSnakeCaseColumn < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :users, :postIds, :post_id
  end

  def self.down
    rename_column :users, :post_id, :postIds
  end
end
