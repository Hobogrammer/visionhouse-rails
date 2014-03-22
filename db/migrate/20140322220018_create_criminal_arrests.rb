class CreateCriminalArrests < ActiveRecord::Migration
  def change
    create_table :criminal_arrests do |t|
      t.integer :user_id
      t.text :description
      t.datetime :month_year
      t.timestamps
    end
  end
end
