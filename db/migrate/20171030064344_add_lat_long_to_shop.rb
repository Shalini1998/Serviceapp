class AddLatLongToShop < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :latitude, :float
    add_column :shops, :longitude, :float
  end
end
