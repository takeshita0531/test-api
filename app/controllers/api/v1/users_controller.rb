module Api
    module V1
        class UsersController < ApplicationController
            def create
                user = User.new(user_params)
                if user.save 
                    render json: { status: 'SUCCESS', data: user }
                else
                    render json: { status: 'SUCCESS', data: user.errors }
                end
            end
            private

            def user_params
                params.permit(:email, :pwd)
            end
        end
    end 
end 