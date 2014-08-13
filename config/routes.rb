Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'comments/new'

	root "stories#index"
	
	resources :stories do
		resources :comments
		resources :votes
	end
end
