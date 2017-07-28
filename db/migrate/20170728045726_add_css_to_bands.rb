class AddCssToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :css, :string
  end
end
