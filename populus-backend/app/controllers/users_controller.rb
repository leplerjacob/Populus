class UsersController < ApplicationController
    def create
        if user_params
            new_user = User.new(user_params)
            if new_user.save()
                render json: {status: 200, username: new_user.username}
            end
        end
        render json: {status: 401}
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
