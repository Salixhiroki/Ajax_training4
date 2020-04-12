Rails.application.routes.draw do
  root 'blogs#show'
  resources :user
  devise_for :users
  post "favorites/create", to: "favorites#create" 
  delete "favorites/destroy", to: "favorites#destroy"
end
