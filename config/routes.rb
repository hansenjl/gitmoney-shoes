Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/shoes', to: 'shoes#index'
  get '/shoes/most_expensive', to: 'shoes#expensive', as: 'expensive'
  get '/shoes/:id', to: 'shoes#show', as: 'shoe'




end
