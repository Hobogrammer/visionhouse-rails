class CreateMaritalStatuses < ActiveRecord::Migration
  def change
    create_table :marital_statuses do |t|
      t.integer :user_id
      t.boolean :single
      t.boolean :married_living_with_spouse
      t.boolean :separated
      t.boolean :divorced
      t.timestamps
    end
  end
end
