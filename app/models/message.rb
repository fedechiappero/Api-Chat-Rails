# frozen_string_literal: true
class Message < ApplicationRecord
  validates :body, :chatroom_id, :sender_id, presence: true

  after_create :broadcast

  private

  def broadcast
    ActionCable.server.broadcast("chat_rooms_#{chatroom_id}_channel", as_json.merge(action: 'ReceiveMessage'))
  end
end
