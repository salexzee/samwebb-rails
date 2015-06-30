Rails.application.routes.draw do
  root 'articles#index'

  resources :article

  get 'pages/portfolio'

end
