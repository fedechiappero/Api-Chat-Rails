class V1::ChatroomsController < V1::BaseController
    
    expose :chatroom
    
    def index
        chats = Chatroom.where(user_id1: params[:userLogged])
        render_api(chats)
    end

    def create
        chatroom.user_id1 = User.find(params[:user_id1])
        chatroom.user_id2 = User.find(params[:user_id2])
        chatroom.save 
        render_api(chatroom)
    end

    private
    
    def chat_params
        params.require(:chatroom).permit(:user_id1, :user_id2)
    end
end
