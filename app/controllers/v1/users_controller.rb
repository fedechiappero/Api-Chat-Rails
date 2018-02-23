class V1::UsersController <  V1::BaseController
    #before_action :authenticate_user!#, except: [ :index ]
    def index
        render_api(User.all())
    end
end
