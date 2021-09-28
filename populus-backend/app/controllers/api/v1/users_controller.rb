module Api
    module V1
        class UsersController < ApplicationController
            def create
                if user_params
                    new_user = User.new(user_params)
                    if new_user.save()
                        render json: {status: 200, username: new_user.username}
                    end
                else
                    render json: {status: 401}
                end
            end

            def login
                if user_params
                    user = User.find_by(username: user_params[:username])
                    if (user.password == user_params[:password])
                        render json: {status: 200, username: user.username}
                    end
                else
                    render json: {status: 401}
                end
            end

            def user_params
                params.require(:user).permit(:username, :password)
            end
        end
    end
end
