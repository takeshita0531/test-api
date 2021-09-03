Rails.application.routes.draw do

 namespace 'api' do
    namespace 'v1' do

  # mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
      resources :user_news, only: %i[create]
      get 'login/login'
      # mount_devise_token_auth_for "User", at: "auth"
      # mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      #   registrations: 'api/v1/auth/registrations'
      # }
    end
  end
end
