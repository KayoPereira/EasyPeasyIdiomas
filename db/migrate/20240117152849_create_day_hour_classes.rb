class CreateDayHourClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :day_hour_classes do |t|
      t.string :day
      t.time :hour

      t.timestamps
    end
  end
end
