Rails.application.routes.draw do


  devise_for :users

  resources :tools, only: [ :new, :show, :index, :edit ]

  resources :bookings, only: [ :new, :show, :index, :edit ]

  resources :reviews, only: [ :new, :show, :index ]

  devise_scope :user do
    get '/profile', to: 'devise/registrations#edit'
  end

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
