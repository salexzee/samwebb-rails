Rails.application.routes.draw do
  devise_for :admins, :skip => :registrations

  authenticate :admins do
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end

  root 'articles#index'

  resources :articles

  get 'pages/projects'

end
