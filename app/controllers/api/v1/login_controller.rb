module Api
    module V1
      class LoginController < ApplicationController
        include ActionController::HttpAuthentication::Token::ControllerMethods
        before_action :authenticate
        def login
          login_user = UserNew.find_by(name: params[:name], pwd: params[:pwd])
            if login_user != nil
              render json: { status: 'SUCCESS', data: login_user }
            else
              render plain: 'no auth'
            end
        end
        
        def destroy
            # user = User.find(params[:user_id)
            if sign_out(user)
                render :json => {success: true}
            else
                render :json => {success: false}
            end
        end
        
        def authenticate
          authenticate_or_request_with_http_token do |token,options|
            auth_user = UserNew.find_by(token: token)
            auth_user != nil ? true : false
          end
        end
      end
    end
end