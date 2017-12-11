class CreateChatrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :chatrooms do |t|
      t.integer :user_id1
      t.integer :user_id2

      t.integer :unread_messages, default: 0

      t.timestamps
    end
  end
end
