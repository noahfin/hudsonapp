Rails.application.routes.draw do
  resources :properties
  resources :marketings
  resources :campaigns
  resources :companies
  resources :todos
  resources :projects
  resources :contacts
  resources :timelines
  root to: 'visitors#index'

  devise_for :users
  devise_for :companies, :controllers => { :registrations => "registrations" }
  resources :users
end
