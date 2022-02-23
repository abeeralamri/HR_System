class AddDivisionIdToTeam < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :division, foreign_key: true, null: true
  end
end
