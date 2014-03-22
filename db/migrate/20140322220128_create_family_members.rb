class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|

      t.timestamps
    end
  end
end
