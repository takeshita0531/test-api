class ApplicationController < ActionController::Base
#         include DeviseTokenAuth::Concerns::SetUserByToken
#         # before_action :authenticate_user!
# #   protect_from_forgery with: :exception
#         protect_from_forgery with: :null_session
#         skip_before_action :verify_authenticity_token, if: :devise_controller?
        include DeviseTokenAuth::Concerns::SetUserByToken
        skip_before_action :verify_authenticity_token, if: :devise_controller?
end
