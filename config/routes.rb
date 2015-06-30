Rails.application.routes.draw do

  get 'article/index'

  root 'pages#index'
  get 'pages/portfolio'

end
