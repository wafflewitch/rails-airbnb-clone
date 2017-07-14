Rails.application.routes.draw do


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
  end

  resources :users, only: [:show] do
    resources :bookings, only: [ :index ]
  end

  resources :tools do
    resources :bookings, only: [ :new, :create, :show, :edit ] do
      resources :reviews, only: [ :new, :create ]
    end
    resources :reviews, only: [ :show, :index ]
  end



  # get '/profile', to: 'pages#profile'

  root to: 'pages#home'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
