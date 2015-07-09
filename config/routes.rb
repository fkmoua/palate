Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  devise_for :users, controllers: { registrations: "registrations" }
  root 'welcome#index', controllers: {registrations: "registrations"} 

  resources :users do 
  		resources :hitlists
  end

  resources :restaurants
  resources :hitlist

end
