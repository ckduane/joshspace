class AddBandMembersToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :band_members, :string
  end
end
