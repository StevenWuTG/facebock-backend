Rails.application.routes.draw do
  resources :friends
  resources :messages
  resources :likes
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
