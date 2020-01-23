Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/shoes', to: 'shoes#index'
  get '/shoes/most_expensive', to: 'shoes#expensive', as: 'expensive'
  get '/shoes/new', to: 'shoes#new', as: 'new_shoe'
  post '/shoes', to: 'shoes#create'
  get '/shoes/:id', to: 'shoes#show', as: 'shoe'
  patch '/shoes/:id', to: 'shoes#update'
  get '/shoes/:id/edit', to: 'shoes#edit', as: 'edit_shoe'




end
