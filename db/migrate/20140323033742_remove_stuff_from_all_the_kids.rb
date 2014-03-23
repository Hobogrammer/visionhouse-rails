class RemoveStuffFromAllTheKids < ActiveRecord::Migration
  def change
    remove_column :children, :user_id
    add_column :children, :application_id, :integer

    remove_column :criminal_arrests, :user_id
    add_column :criminal_arrests, :application_id, :integer

    remove_column :employments, :user_id
    add_column :employments, :application_id, :integer

    remove_column :family_members, :user_id
    add_column :family_members, :application_id, :integer

    remove_column :housing_histories, :user_id
    add_column :housing_histories, :application_id, :integer

    remove_column :people, :user_id
    add_column :people, :application_id, :integer
  end
end
