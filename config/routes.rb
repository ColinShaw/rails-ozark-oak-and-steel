Rails.application.routes.draw do

	get  '/products', 	   to: 'products#index'
	get  '/products/:id',  to: 'products#show'
	
	get  '/feed',          to: 'feed#index'
	
	root 'products#index'

end
