class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users,:first_name,:string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_id, :integer
    add_column :users, :relationship, :string
  end
end
