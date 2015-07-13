Rails.application.routes.draw do
  devise_for :admins, :skip => :registrations
  root 'articles#index'

  resources :articles

  get 'pages/projects'

end
