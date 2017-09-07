class AddJavascriptToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :javascript, :string
  end
end
