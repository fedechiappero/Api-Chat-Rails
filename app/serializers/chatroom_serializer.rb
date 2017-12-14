# frozen_string_literal: true
class ChatroomSerializer < ActiveModel::Serializer
    attributes :id, :user1, :user2, :updated_at, :unread_messages
end