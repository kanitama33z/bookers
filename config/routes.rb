Rails.application.routes.draw do

	get '/' => 'books#top'


  get 'books/' => 'books#books', as: 'book'

  post 'books/' => 'books#create'

  get 'books/:id' => 'books#show', as: 'show_book'

  get 'books/:id/edit' => 'books#edit', as: 'edit_book'

  patch 'books/:id' => 'books#update', as: 'update_book'

  delete 'books/:id' => 'books#destroy', as: 'destroy_book'


  # resources :books
end
