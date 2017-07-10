Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/show'

  get 'reviews/index'

  get 'bookings/index'

  get 'bookings/new'

  get 'bookings/edit'

  get 'bookings/show'

  get 'tools/new'

  get 'tools/edit'

  get 'tools/show'

  get 'tools/index'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
