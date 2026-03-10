Rails.application.routes.draw do
  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path
  root to: "lists#index"

  # Resources
  resources :lists, only: [ :index, :show, :new, :create, :destroy ]
  resources :bookmarks, only: [ :new, :create, :destroy ]
end
