class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :user_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :relationship

      t.timestamps
    end
  end
end
