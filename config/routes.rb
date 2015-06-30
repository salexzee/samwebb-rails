Rails.application.routes.draw do
  root 'articles#index'

  resources :articles

  get 'pages/portfolio'

end
