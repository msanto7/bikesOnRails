Rails.application.routes.draw do

  get 'users/new'
  get 'pages/about'
  get 'default/index'
  get 'default/signup'
  get 'signup', to: 'users#new'

  root 'default#index'

  resources :users

end
