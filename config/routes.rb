Rails.application.routes.draw do
  devise_for :admins
  root 'articles#index'

  resources :articles

  get 'pages/portfolio'

end
