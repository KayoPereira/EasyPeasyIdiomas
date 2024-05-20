class RemoveDayHourAndAddUniqueColumnDayHour < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :day
    remove_column :lessons, :hour
    add_column :lessons, :day_hour, :datetime
  end
end
