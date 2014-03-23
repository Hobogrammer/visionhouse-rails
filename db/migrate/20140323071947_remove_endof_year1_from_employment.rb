class RemoveEndofYear1FromEmployment < ActiveRecord::Migration
  def change
    remove_column :employments, :end_month_year1
  end
end
