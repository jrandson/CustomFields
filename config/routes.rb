Rails.application.routes.draw do
  

    
  	resources :dropdowns
  	resources :text_areas
    resources :contacts
    resources :users
	resources :text_fields
	resources :text_field_values

	#==============Static pages ===================
	root	'static_pages#home'
	
	get		'/help',	to: 'static_pages#help'	
	get		'/about',	to: 'static_pages#about'
	get 	'/contact_fields',	to: 'static_pages#contact_fields'
	get '/contact_form', to: 'static_pages#contact_form'
	
	#=========== signup =========================
	get		'/signup',	to: 'users#new'
	post	'/signup',	to: 'users#create'
	
	#===========Login ===========================
	get 	'/login',	to: 'sessions#new' # creates login_path
	post 	'/login', 	to: 'sessions#create' 
	delete 	'/logout', 	to: 'sessions#destroy'

	#===================Contact =================
	get '/contatcs', to: 'contact#index'
	get '/create', to: 'contatc#new'
	post '/create', to: 'contact#create'
	
end
