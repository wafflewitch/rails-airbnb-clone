Rails.application.routes.draw do


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
  end

  resources :tools

  resources :bookings, only: [ :new, :show, :index, :edit ]

  resources :reviews, only: [ :new, :show, :index ]

  resources :users, only: [:show]

  # get '/profile', to: 'pages#profile'

  root to: 'pages#home'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
