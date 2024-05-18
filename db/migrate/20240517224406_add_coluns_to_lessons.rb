class AddColunsToLessons < ActiveRecord::Migration[7.0]
  def change
    add_reference :lessons, :student, foreign_key: { to_table: :users }, index: true
    add_reference :lessons, :teacher, foreign_key: { to_table: :users }, index: true
  end
end
