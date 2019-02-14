Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/show'
  resources :artists, only: [:index, :show]

  root to: 'artists#index'
end
