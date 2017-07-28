class ChangePageIdColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :friends, :page_id, :band_id
  end
end
