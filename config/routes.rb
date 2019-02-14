Rails.application.routes.draw do
  get 'search/results'
  resources :pages
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]
  resources :albums, only: [:index, :show]

  get 'static/:permalink', to: 'pages#static', as: 'static'

  root to: 'artists#index'
end
