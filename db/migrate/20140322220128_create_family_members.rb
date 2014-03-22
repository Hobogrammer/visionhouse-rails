class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|
      t.integer :user_id
      t.string :relationship
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :phone
      t.boolean :supportive_of_you
      t.string :family_member_col
      t.timestamps
    end
  end
end
