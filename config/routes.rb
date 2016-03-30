Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users

  namespace :admin do
    root "categories#index"
    resources :categories
    resources :questions, except: [:show]
    resources :users 
  end
end
