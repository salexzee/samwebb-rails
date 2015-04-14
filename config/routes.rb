Rails.application.routes.draw do

  root 'pages#index'

  get 'pages/portfolio'
  get 'pages/contact'

end
