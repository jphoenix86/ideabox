Rails.application.routes.draw do
  root "site#index"
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :ideas, only: [:index, :create, :destroy, :update]
    end
  end
end
