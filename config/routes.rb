Rails.application.routes.draw do
  get 'home/index' 

  root 'home#index'

  resources :owners, only: [:show, :index]
  resources :shops, only: [:show, :index]
  resources :service_men, only: [:show, :index]
  resources :services, only: [:show, :index]


  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admins do
  
    resources :owners
    resources :service_men
    resources :services
    resources :shops
  end
end

