Rails.application.routes.draw do
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]

  root to: 'artists#index'
end
