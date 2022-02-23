class RemoveColums < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :e_team
    remove_column  :divisions, :d_team
    remove_column :targets, :t_team
  end
end
