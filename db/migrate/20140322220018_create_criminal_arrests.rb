class CreateCriminalArrests < ActiveRecord::Migration
  def change
    create_table :criminal_arrests do |t|

      t.timestamps
    end
  end
end
