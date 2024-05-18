class AddColunsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :cpf, :string
    add_reference :students, :user, null: false, foreign_key: true
    add_column :students, :full_name, :string
    add_column :students, :birthdate, :date
    add_column :students, :desired_datetime, :string
    add_column :students, :payday, :integer
    remove_column :students, :name
  end
end
