Rails.application.routes.draw do
  # get 'lists/new'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/edit'
  # get 'top' => 'homes#top'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  resources :books

end
