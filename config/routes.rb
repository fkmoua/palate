Rails.application.routes.draw do

  root 'welcome#index' 

  resources :restaurants
  resources :hitlist

end
