Rails.application.routes.draw do
  
  resources :profiles
  resources :balances
  
  
  devise_for :users
  root 'home#index'
  get 'home/prices'
  
  post "/home/prices" => 'home/prices'
  
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
end