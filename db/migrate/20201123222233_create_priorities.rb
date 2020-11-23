class CreatePriorities < ActiveRecord::Migration[6.0]
  def change
    create_table :priorities do |t|
      t.string :job_search
      t.string :location
      t.integer :position
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
