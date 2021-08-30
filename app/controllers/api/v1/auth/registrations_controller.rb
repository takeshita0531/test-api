module Api
  module V1
    module Auth
      class RegistrationsController < DeviseTokenAuth::RegistrationsController
        skip_before_action :verify_authenticity_token
        private
        def sign_up_params
          params.permit(:name, :nickname, :email, :img, :password, :password_confirmation)
        end
        def account_update_params
          params.permit(:name, :nickname, :email, :img)
        end
      end
    end
  end
end