class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :first_name, :create_users, :string
    add_column :middle_name, :create_users, :string
    add_column :last_name, :create_users, :string
    add_column :user_id, :create_users, :integer
    add_column :relationship, :create_users, :string
  end
end
