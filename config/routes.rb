Rails.application.routes.draw do
  # get 'tags/new'
  # get 'tags/index'
  # get 'topics/new'
  
  # get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resources :users
  resources :topics

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  #ここから追加
  # resources :favorites
  # post '/favorites', to: 'favorites#destroy'
  # resources :favorites
  
  # delete 'favorite/:id' => 'favorites#destroy' as 'destroy_fovorite'
  
  # ここから追加
  # resources :topics do
  #   resource :favorites only: [:create, :destroy]
  # end
  

  
end