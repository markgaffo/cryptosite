Rails.application.routes.draw do
  devise_for :users
  
  root 'home#index'
  get 'home/prices'
  
  post "/home/prices" => 'home/prices'
end