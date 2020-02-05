Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'

  get '/auth/:provider/callback' => 'sessions#omniauth'

  resources :users, only: [:show]
  resources :categories, only: [:index, :new, :create] do
    resources :shoes, only: [:index, :new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/shoes/most_expensive', to: 'shoes#expensive', as: 'expensive'


  #unnested shoe routes
  resources :shoes, only: [:index, :new, :show, :create, :edit, :update, :destroy]



  # get '/shoes', to: 'shoes#index'
  # get '/shoes/new', to: 'shoes#new', as: 'new_shoe'
  # post '/shoes', to: 'shoes#create'
  # get '/shoes/:id', to: 'shoes#show', as: 'shoe'


end

