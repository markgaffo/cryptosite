Rails.application.routes.draw do
  
  resources :gemtips
  resources :cryptos
  resources :profiles
  resources :balances
  
  
  devise_for :users
  root 'home#index'
  get 'home/prices'

  get '/tipcheck', :controller=>'gemtips', :action=>'showtip'
  post '/validate', :controller=>'gemtips', :action=>'checktip'
  
  post "/home/prices" => 'home/prices'
  
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
end