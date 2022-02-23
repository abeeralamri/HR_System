class AddTeamToTarget < ActiveRecord::Migration[7.0]
  def change
    add_reference :targets, :team, foreign_key: true
  end
end
