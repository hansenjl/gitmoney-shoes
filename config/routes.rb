Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/shoes/most_expensive', to: 'shoes#expensive', as: 'expensive'

  resources :shoes, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # get '/shoes', to: 'shoes#index'
  # get '/shoes/new', to: 'shoes#new', as: 'new_shoe'
  # post '/shoes', to: 'shoes#create'
  # get '/shoes/:id', to: 'shoes#show', as: 'shoe'




end




# new and create method  (controller)
# a view with a form
# routes