Rails.application.routes.draw do
  resources :companies
  resources :todos
  resources :projects
  resources :contacts
  resources :timelines
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
