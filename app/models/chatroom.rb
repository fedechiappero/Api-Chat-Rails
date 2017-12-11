class Chatroom < ApplicationRecord
    #las claves foraneas daban error SystemStackError (stack level too deep): cuando estaban definidas igual en las puntas
    belongs_to :user1, class_name: "User", foreign_key: "user_id1"
    belongs_to :user2, class_name: "User", foreign_key: "user_id2"

    #has_many :messages, dependent: :destroy

    validates :user_id1, :user_id2, presence: true
end
