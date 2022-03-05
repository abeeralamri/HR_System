class AddTeamToDivision < ActiveRecord::Migration[7.0]
  def change
    add_reference :divisions, :team, foreign_key: true, null: true
  end
end
