class AddColumnToDivision < ActiveRecord::Migration[7.0]
  def change
    add_column(:divisions , :team, :string)
  end
end
