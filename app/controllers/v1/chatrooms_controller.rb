class V1::ChatroomsController < V1::BaseController
    
    expose :chatroom #works on create
    
    def index
        usr = params[:userLogged]#forward, it must be the token
        chatrooms = Chatroom.includes(:user1, :user2).where(user_id1: User.find(usr.to_i)).or(Chatroom.includes(:user1, :user2).where(user_id2: User.find(usr.to_i)))
        render_api(chatrooms)
    end

    def create
        usr1 = User.find([params[:user_id1],params[:user_id2]].min)
        usr2 = User.find([params[:user_id1],params[:user_id2]].max)
        
        chatroom = Chatroom.where(user_id1: usr1, user_id2: usr2)

        if chatroom.empty?#doesn't exist
            chatroom = Chatroom.new(user1: usr1, user2: usr2)
            chatroom.save 
        end
        render_api(chatroom)
    end

    def show
        chatroom = Chatroom.includes(:user1, :user2).find(params[:id])
        render_api(chatroom)
    end

    def destroy
        chatroom = Chatroom.find(params[:id])
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
