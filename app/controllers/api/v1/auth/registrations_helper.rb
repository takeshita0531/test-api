module Api
  module V1
    module Auth
      class RegistrationsController < DeviseTokenAuth::RegistrationsController
        private
        def sign_up_params
          params.require(:registration).permit(:name, :nickname, :email, :password, :password_confirmation)
        end
        def account_update_params
          params.require(:registration).permit(:name, :nickname, :email)
        end
      end
    end
  end
end