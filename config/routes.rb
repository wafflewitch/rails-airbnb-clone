Rails.application.routes.draw do


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
  end

  resources :users do
    resources :bookings, only: [ :index ]
  end

  resources :tools do
    resources :bookings, only: [ :new, :create, :show, :edit ]
    resources :reviews, only: [ :new, :show, :index ]
  end

  resources :users, only: [:show]

  # get '/profile', to: 'pages#profile'

  root to: 'pages#home'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
