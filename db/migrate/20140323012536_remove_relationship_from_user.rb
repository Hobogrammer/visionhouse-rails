class RemoveRelationshipFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :relationship
    remove_column :users, :user_id
    remove_column :users, :name
  end
end
