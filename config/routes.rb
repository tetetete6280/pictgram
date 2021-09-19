Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'
  
resources :users
  #rootとgetの違いがわからない。
end
