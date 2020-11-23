class AddForeignKeyToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :sender_user, foreign_key: { to_table: "users" }
    add_reference :messages, :receiver_user, foreign_key: { to_table: "users" }
  end
end
