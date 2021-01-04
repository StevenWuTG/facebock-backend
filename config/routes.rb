Rails.application.routes.draw do
  # need to refractor later
  # namespace :api do 
  #   namespace :v1 do 
      resources :post_containers
      resources :friendships
      resources :messages
      resources :likes
      resources :posts
      resources :users
  
  

  post "./login", to: "auth#create"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #   end
  # end 
end 
