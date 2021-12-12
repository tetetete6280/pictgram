Rails.application.routes.draw do
  get 'tags/new'
  get 'tags/index'
  get 'topics/new'
  
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :topics
  resources :favorites
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  #ここから追加
  # post '/favorites', to: 'favorites#destroy'
  # resources :favorites
  
  delete 'favorite/:id' => 'favorites#destroy' as 'destroy_fovorite'
  
  # ここから追加
  # resources :topics do
  #   resource :favorites only: [:create, :destroy]
  # end
  

  
end