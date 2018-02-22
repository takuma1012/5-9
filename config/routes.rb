Rails.application.routes.draw do

  devise_for :users
	resources :blogs
	# resources :post_books, only: [:new, :create, :index, :show]
	resources :users, only: [:show, :edit, :update, :opinion, :introduction, :destroy]

	get '/home' => "blogs#choose"
	get '/about' => "blogs#about"
	get '/user/people' => "users#people"
	root 'blogs#choose'
	post '/users/:id/edit' => "users#update"
end
