class CreateHousingHistories < ActiveRecord::Migration
  def change
    create_table :housing_histories do |t|
      t.integer :id
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.datetime :from_date
      t.datetime :to_date
      t.text :reason_for_leaving

      t.timestamps
    end
  end
end
