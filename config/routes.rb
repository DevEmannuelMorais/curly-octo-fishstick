Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :products
  resources :users
  resources :orders do
    resources :order_items
  end

  root "products#index"
end