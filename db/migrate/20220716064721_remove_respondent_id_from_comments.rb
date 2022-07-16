class RemoveRespondentIdFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :respondent_id, :string
  end
end
