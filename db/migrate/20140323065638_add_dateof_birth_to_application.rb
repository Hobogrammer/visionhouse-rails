class AddDateofBirthToApplication < ActiveRecord::Migration
  def change
    remove_column :applications, :family_programs
    add_column :applications, :date_of_birth, :datetime
  end
end
