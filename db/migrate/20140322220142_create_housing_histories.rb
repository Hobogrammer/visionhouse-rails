class CreateHousingHistories < ActiveRecord::Migration
  def change
    create_table :housing_histories do |t|

      t.timestamps
    end
  end
end
