class RemoveStuffFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :provider
    remove_column :users, :uid
    remove_column :users, :classification
    remove_column :users, :first_name
    remove_column :users, :middle_name
    remove_column :users, :last_name
    remove_column :users, :oauth_token
    remove_column :users, :oauth_expires_at
  end
end
