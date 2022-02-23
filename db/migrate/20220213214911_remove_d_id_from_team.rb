class RemoveDIdFromTeam < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams , :division_id
  end
end
