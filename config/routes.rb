Rails.application.routes.draw do

  get 'pages/about'
  get 'default/index'

  root 'default#index'

end
