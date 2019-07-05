Rails.application.routes.draw do

  # GET  
  get '/users/new'
  get '/pages/about'
  get '/default/index'
  get '/default/signup'
  get '/signup', to: 'users#new'

  #POST
  post '/signup', to: 'users#create'

  root 'default#index'

  resources :users

end
