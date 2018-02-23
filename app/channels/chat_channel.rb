# frozen_string_literal: true
class ChatChannel < ApplicationCable::Channel
  def subscribe
    stream_from "chat_rooms_#{chatroom_id}_channel" 
  end

  def unsubscribe
    # Any cleanup needed when channel is unsubscribed
  end
end
