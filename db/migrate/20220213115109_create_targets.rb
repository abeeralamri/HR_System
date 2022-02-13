class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :finish_date
      t.string :t_team
      t.string :status

      t.timestamps
    end
  end
end
