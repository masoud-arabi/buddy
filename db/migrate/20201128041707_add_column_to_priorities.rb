class AddColumnToPriorities < ActiveRecord::Migration[6.0]
  def change
    add_column :priorities, :industry, :string
  end
end
