Rails.application.routes.draw do
  resources :aisles
  resources :products
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    resources :products, :users, :aisles
  end
end
