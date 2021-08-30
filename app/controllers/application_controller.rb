class ApplicationController < ActionController::Base
        before_action :authenticate_user!, except: [:new, :create]
        include DeviseTokenAuth::Concerns::SetUserByToken
#   protect_from_forgery with: :exception
        protect_from_forgery with: :null_session
end
