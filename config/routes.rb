Rails.application.routes.draw do
  devise_for :users

  get 'products/show', to: 'products#show'
  get '/', to: 'home_controller#index'
  root 'home_controller#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end