Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins, :skip => :registrations

  authenticate :admin do
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end

  root 'home#index'

  get '/articles/index' => 'articles#index'
  resources :articles

end
