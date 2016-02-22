Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins, :skip => :registrations

  authenticate :admin do
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end

  root 'articles#index'

  resources :articles

  get '/career/resume' => 'career#index'

end
