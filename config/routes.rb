Rails.application.routes.draw do
  devise_for :users
  root :to => "home#index"

  resources :contact
  resources :orders
  resources :items
end
