class AddReferenceToDayHourClass < ActiveRecord::Migration[7.0]
  def change
    add_reference :day_hour_classes, :student, null: false, foreign_key: true
  end
end
