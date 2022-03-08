class DropDevise < ActiveRecord::Migration[7.0]
  def change
    drop_table :devises
  end
end
