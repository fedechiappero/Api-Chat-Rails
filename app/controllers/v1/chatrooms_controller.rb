class V1::ChatroomsController < V1::BaseController
    
    expose :chatroom
    
    def index
        usr = params[:userLogged]
        chatrooms = Chatroom.includes(:user1, :user2).where(user_id1: User.find(usr.to_i)).or(Chatroom.includes(:user1, :user2).where(user_id2: User.find(usr.to_i)))
        render_api(chatrooms)
    end

    def create
        usr1 = [params[:user_id1],params[:user_id2]].min
        usr2 = [params[:user_id1],params[:user_id2]].max
        chatroom.user1 = User.find(usr1)
        chatroom.user2 = User.find(usr2)
        chatroom.save 
        render_api(chatroom)
    end

    def show
        chatroom = Chatroom.find(params[:id])
        render_api(chatroom)
    end

    def destroy
        chatrooms = Chatroom.find(params[:id])
        if chatroom
            chatroom.destroy
        end
        render_api(chatroom)
    end

    private
    
    def chat_params
        params.require(:chatroom).permit(:user_id1, :user_id2, :id)
    end
end
