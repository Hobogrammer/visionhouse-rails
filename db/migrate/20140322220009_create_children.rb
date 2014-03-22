class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|

      t.timestamps
    end
  end
end
