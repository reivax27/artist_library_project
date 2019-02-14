Rails.application.routes.draw do
  resources :pages
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]
  resources :albums, only: [:index, :show]

  root to: 'artists#index'
end
