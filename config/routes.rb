Rails.application.routes.draw do
  resources :projects
  resources :compaines
  resources :contacts
  resources :timelines
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
