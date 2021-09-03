module Api
    module V1
        class UserNewsController < ApplicationController
            def create
                user = UserNew.new(user_new_params)
                if user.save 
                    render json: { status: 'SUCCESS', data: user }
                else
                    render json: { status: 'SUCCESS', data: user.errors }
                end
            end
            private

            def user_new_params
                params[:user_new]permit(:name, :pwd)
            end
        end
    end 
end 