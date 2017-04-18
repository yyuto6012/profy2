Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create, :show]
  resources :users, only: [:show, :edit, :update]
  resources :answers, only: [:new, :create, :edit, :update]
  root to: "top#index"
end
