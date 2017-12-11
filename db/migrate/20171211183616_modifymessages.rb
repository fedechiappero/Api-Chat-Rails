class Modifymessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :readed, :boolean, default: false
    add_column :messages, :chatroom_id, :integer
    remove_column :messages, :sender
    add_column :messages, :sender_id, :integer
  end
end
