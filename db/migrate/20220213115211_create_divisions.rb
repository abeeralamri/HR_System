class CreateDivisions < ActiveRecord::Migration[7.0]
  def change
    create_table :divisions do |t|
      t.string :name
      t.text :description
      t.string :d_team
      t.string :manager

      t.timestamps
    end
  end
end
