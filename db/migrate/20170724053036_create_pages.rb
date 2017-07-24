class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :profile_views
      t.string :last_login
      
      t.timestamps
    end
  end
end
