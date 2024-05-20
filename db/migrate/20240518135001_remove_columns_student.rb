class RemoveColumnsStudent < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :cpf
    remove_column :students, :full_name
    remove_column :students, :birthdate
    remove_column :students, :current_month
  end
end
