Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  get '/users', to: 'users#index'
  get '/users/search', to: 'users#search'
  get '/users/mark', to: 'users#mark'
  resources :posts
end
