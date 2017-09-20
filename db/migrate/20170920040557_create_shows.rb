class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :date
      t.string :time
      t.string :name
      t.string :location
      t.integer :band_id

      t.timestamps
    end
  end
end
