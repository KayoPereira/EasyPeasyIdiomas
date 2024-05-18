class RenameTableDayHourClassesToLessons < ActiveRecord::Migration[7.0]
  def change
    rename_table :day_hour_classes, :lessons
  end
end
