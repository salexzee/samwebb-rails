Rails.application.routes.draw do
	resources 'contacts', only: [:new, :create]

  root 'pages#index'
  get 'pages/portfolio'

end
