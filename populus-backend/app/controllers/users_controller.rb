class UsersController < ApplicationController
    def create
        print(user_params)
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
