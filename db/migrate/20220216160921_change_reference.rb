class ChangeReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :divisions, :employee, foreign_key: true, null: true
  end
end
