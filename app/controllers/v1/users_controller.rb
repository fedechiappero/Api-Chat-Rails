class V1::UsersController <  V1::BaseController
    def index
        render_api(User.all())
    end
end
