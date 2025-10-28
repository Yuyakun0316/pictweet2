Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create, :destroy]
end
