Rails.application.routes.draw do
  

    
    resources :contacts

	#==============Static pages ===================
	root	'static_pages#home'
	get		'/help',	to: 'static_pages#help'	
	get		'/about',	to: 'static_pages#about'
	get 	'/contact_fields',	to: 'static_pages#contact_fields'
	#=========== signup =========================
	get		'/signup',	to: 'users#new'
	post	'/signup',	to: 'users#create'
	#===========Login ===========================
	get 	'/login',	to: 'sessions#new' # creates login_path
	post 	'/login', 	to: 'sessions#create' 
	delete 	'/logout', 	to: 'sessions#destroy'

	get '/contact_form', to: 'static_pages#contact_form'

	#===================Contact =================
	get '/contatcs', to: 'contact#index'
	get '/create', to: 'contatc#new'
	post '/create', to: 'contact#create'
	resources :users

	resources :text_fields

	resources :text_field_values
end
