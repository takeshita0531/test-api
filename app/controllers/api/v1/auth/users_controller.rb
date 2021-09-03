module Api
    module V1
        module Auth
            class UsersController < ApplicationController
                def create
                    User.create(users_params)
                    render json: {status: 200, message: 'User is created.'}, status: 200
                end
        
                private
                
                def users_params
                    params.permit(:email, :pwd)
                end
            end
        end
    end
end