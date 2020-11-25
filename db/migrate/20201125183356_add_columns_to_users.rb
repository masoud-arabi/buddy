class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :appartement_address, :string
    add_column :users, :city_address, :string
    add_column :users, :language_application, :string
  end
end
