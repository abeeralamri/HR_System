class ChangeColumnNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :employees, :team_id, null: true
  end
end
