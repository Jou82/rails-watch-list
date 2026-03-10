Rails.application.routes.draw do
  # Root path
  root "lists#index"

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Resources
  resources :lists, only: [ :index, :show, :new, :create, :destroy ] do
    resources :bookmarks, only: [ :new, :create ]
  end

  resources :bookmarks, only: [ :destroy ]
end
