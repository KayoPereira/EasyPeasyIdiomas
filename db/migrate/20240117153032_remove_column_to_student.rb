class RemoveColumnToStudent < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :desired_datetime
  end
end
