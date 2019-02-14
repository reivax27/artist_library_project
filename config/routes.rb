Rails.application.routes.draw do
  get 'albums/index'
  get 'albums/show'
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]

  root to: 'artists#index'
end
