Rails.application.routes.draw do

  get 'bosses/index'

  get 'bosses/new'

  get 'bosses/edit'

  get 'enemys/index'

  get 'enemys/new'

  get 'enemys/edit'

  get 'locations/new'

  get 'locations/index'

  get 'locations/show'

  get 'game_sessions/index'

  get 'game_sessions/new'

  get 'game_sessions/edit'

  root 'pages#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :characters
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
