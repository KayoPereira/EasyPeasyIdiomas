class UserIdNullFalseChange < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :user_id, :bigint, null: true
  end
end
