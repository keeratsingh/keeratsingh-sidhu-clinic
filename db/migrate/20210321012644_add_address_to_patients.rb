class AddAddressToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :address, :string
  end
end
