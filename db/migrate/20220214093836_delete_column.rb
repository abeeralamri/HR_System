class DeleteColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :divisions, :team_id
  end
end
