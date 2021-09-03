module Api
    module V1
        class UserNewsController < ApplicationController
            
            def create
                name = params[:name]
                pwd = params[:pwd]
                user = UserNew.new
                user.naem = name
                user.pwd = pwd
                if user.save 
                    render json: { status: 'SUCCESS', data: user }
                else
                    render json: { status: 'SUCCESS', data: user.errors }
                end
            end
            # private

            # def user_new_params
            #     params[:user_new].permit(:name, :pwd)
            # end
        end
    end 
end 