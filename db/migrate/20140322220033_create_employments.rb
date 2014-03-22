class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :user_id
      t.string :employer_name
      t.string :employer_address1
      t.string :employer_address2
      t.string :employer_city
      t.string :employer_state
      t.integer :employer_zip_code
      t.integer :employer_phone
      t.string :occupation
      t.datetime :start_month_year
      t.datetime :end_month_year
      t.datetime :end_month_year1
      t.text :reason_for_leaving
      t.timestamps
    end
  end
end
