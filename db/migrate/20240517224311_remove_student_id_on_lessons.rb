class RemoveStudentIdOnLessons < ActiveRecord::Migration[7.0]
  def change
    remove_reference :lessons, :student, null: false, foreign_key: true
  end
end
