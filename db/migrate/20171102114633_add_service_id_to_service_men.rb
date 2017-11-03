class AddServiceIdToServiceMen < ActiveRecord::Migration[5.0]
  def change
    add_column :service_men, :service_id, :integer
  end
end
