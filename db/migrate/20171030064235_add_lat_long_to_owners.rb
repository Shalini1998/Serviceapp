class AddLatLongToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :latitude, :float
    add_column :owners, :longitude, :float
  end
end
