Rails.application.routes.draw do

	root 'books#root'

	resources :books

end
