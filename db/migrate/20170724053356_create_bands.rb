class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string  :name
      t.string  :photo
      t.string  :genre
      t.string  :location
      t.string  :email
      t.string  :member_since
      t.string  :influences
      t.string  :sounds_like
      t.string  :record_label
      t.string  :type_of_label

      t.timestamps
    end
  end
end
