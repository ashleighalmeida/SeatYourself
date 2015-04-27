Rails.application.routes.draw do

  get 'users/new'

  get 'users/create'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  get 'reservations/show'

  get 'restaurants' => 'restaurants#index'
  get 'restaurants/:id' => 'restaurants#show', as: 'restaurant'


  resources :restaurants do
  resources :reservations, only: [:new, :create, :show, :destroy]
  end 

end

Seaty::Application.routes.draw do
  resources :restaurants
  resources :sessions, :reservations, :users, only: [:new, :create, :delete, :destroy]
end