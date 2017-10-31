class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :location
      t.integer :owner_id

      t.timestamps
    end
  end
end
