class RenameColumnCountryAddressToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :country_address
    add_column :users, :country_select, :string
  end
end
