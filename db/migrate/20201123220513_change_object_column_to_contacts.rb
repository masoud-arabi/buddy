class ChangeObjectColumnToContacts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :start_date
    add_column :contacts, :start_date, :date
    remove_column :contacts, :end_date
    add_column :contacts, :end_date, :date
  end
end
