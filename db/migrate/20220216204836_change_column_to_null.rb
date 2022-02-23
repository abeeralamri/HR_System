class ChangeColumnToNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :targets, :team_id, null: true
  end
end
