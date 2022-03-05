class AddDivisionToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :division, foreign_key: true, null: true
  end
end
