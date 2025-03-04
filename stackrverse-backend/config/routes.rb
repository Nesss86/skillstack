Rails.application.routes.draw do
  # Health check route (keep this for monitoring)
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path (optional, we can set this to an API info page or remove it)
  root "application#index"

  # API routes
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show]
      resources :lessons, only: [:index, :show]
      resources :challenges, only: [:index, :show]
      resources :user_progress, only: [:index, :create, :update]
    end
  end

  # Prevents favicon.ico error in logs
  get '/favicon.ico', to: proc { [204, {}, []] }
end


