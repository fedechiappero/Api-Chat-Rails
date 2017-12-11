# frozen_string_literal: true
class ChatroomSerializer < ActiveModel::Serializer
    attributes :id, :user_id1, :user_id2, :updated_at, :unread_messages
end