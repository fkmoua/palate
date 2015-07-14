Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  devise_for :users, controllers: { registrations: "registrations" }

  # get 'users/:user_id/hitlists/new', controllers: { hitlist: "hitlist" }
  resources :users do 
  	resources :hitlists
  end

  get 'users/:user_id/hitlists' => "hitlists#index"
  get 'users/:user_id/hitlists/new' => "hitlists#new"
  
  root 'welcome#index', controllers: {registrations: "registrations"} 


  resources :restaurants
  # resources :hitlist

end
