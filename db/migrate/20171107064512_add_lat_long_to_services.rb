class AddLatLongToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :latitude, :float
    add_column :services, :longitude, :float
  end
end
