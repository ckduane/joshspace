class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.references :commentable, polymorphic: true, index: true
      t.string :username
      t.string :image

      t.timestamps
    end
  end
end
