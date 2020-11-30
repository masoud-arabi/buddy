class AddBackgroudColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :country_address, :string
    add_column :users, :diploma, :string
    add_column :users, :field_of_studies, :string
    add_column :users, :start_date, :string
    add_column :users, :end_date, :string
  end
end
