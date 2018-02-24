# frozen_string_literal: true
class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_rooms__channel" #{chatroom_id}
  end

  def unsubscribe
    # Any cleanup needed when channel is unsubscribed
  end
end
