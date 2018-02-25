Rails.application.routes.draw do

  devise_for :users
	resources :blogs
	resources :users, only: [:index, :show, :edit, :update, :destroy]

	get '/home' => "blogs#choose"
	get '/about' => "blogs#about"
	root 'blogs#choose'
end
