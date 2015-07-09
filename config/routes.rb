Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  devise_for :users, controllers: { registrations: "registrations" }
  root 'welcome#index' 

  resources :users
  resources :restaurants
  resources :hitlist

end
