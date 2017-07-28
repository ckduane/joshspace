class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :image
      t.integer :order
      t.integer :page_id
      
      t.timestamps
    end
  end
end
