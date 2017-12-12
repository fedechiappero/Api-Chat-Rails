# frozen_string_literal: true
class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :sender_id, :created_at, :updated_at
end
