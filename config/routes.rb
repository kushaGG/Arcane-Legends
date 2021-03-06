Rails.application.routes.draw do

  root 'pages#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :characters
  resources :items
  resources :locations
  resources :enemys
  resources :pages
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
