Rails.application.routes.draw do
  

	get		'home/index'

	root	'static_pages#home'

	get		'/help',	to: 'static_pages#help'
	#create help_path/help_url and help_help
	#posso me referir a este link como help_path na função link_to	
	get		'/about',	to: 'static_pages#about'
	get 	'/contact',	to: 'static_pages#contact'

	get		'/signup',	to: 'users#new'
	post	'/signup',	to: 'users#create'

	get 	'/login',	to: 'sessions#new' # creates login_path
	post 	'/login', 	to: 'sessions#create' 
	delete 	'/logout', 	to: 'sessions#destroy'

	resources :users
end
