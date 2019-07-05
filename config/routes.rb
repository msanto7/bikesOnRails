Rails.application.routes.draw do

  get 'sessions/new'
  # GET
  #get '/users/new'
  get '/pages/about'
  get '/default/index'
  get '/default/signup'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'

  #POST
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

  #DELETE
  delete '/logout', to: 'sessions#destroy'

  #ROOT
  root 'default#index'

  # Resources
  resources :users
  resources :reviews, only: [:create, :destroy]

end
