class Chatroom < ApplicationRecord
    belongs_to :user_id1, class_name: "User", foreign_key: "user_id1"
    belongs_to :user_id2, class_name: "User", foreign_key: "user_id2"

    has_many :messages, dependent: :destroy
end
