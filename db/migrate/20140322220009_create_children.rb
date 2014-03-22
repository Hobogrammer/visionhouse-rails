class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.integer :age
      t.string :gender
      t.string :legal_guardian_first_name
      t.string :legal_guardian_last_name
      t.string :legal_guardian_gender
      t.string :person_with_custody_name
      t.timestamps
    end
  end
end
