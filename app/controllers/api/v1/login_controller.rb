module Api
    module V1
      class LoginController < ApplicationController
        include ActionController::HttpAuthentication::Token::ControllerMethods
        before_action :authenticate
        def login
          login_user = User.find_by(name: params[:name], pwd: params[:pwd])
            if login_user != nil
              render plain: login_user.token
            else
              render plain: 'no auth'
            end
        end
        
        def authenticate
          authenticate_or_request_with_http_token do |token,options|
            auth_user = User.find_by(token: token)
            auth_user != nil ? true : false
          end
        end
      end
    end
end