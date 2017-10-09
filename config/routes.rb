Rails.application.routes.draw do
  resources :products
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
  resources :products
    resources :users do
      resources :first_name
    end
  end

end
