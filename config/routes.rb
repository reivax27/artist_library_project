Rails.application.routes.draw do
  resources :pages
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]
  resources :albums, only: [:index, :show]

  get 'static/:permalink', to: 'pages#static', as: 'static'
  get 'search_results', to: 'search#results', as: 'search_results'

  root to: 'artists#index'
end
