class CreateServiceMen < ActiveRecord::Migration[5.0]
  def change
    create_table :service_men do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_no
      t.string :address
      t.string :profile_pic
      t.string :email
      t.integer :shop_id
      t.string :age

      t.timestamps
    end
  end
end
