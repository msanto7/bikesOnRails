Rails.application.routes.draw do

  get 'pages/about'
  get 'default/index'
  get 'default/signup'

  root 'default#index'

end
