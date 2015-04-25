Rails.application.routes.draw do

  get 'users/new'

  get 'users/create'

  get 'restaurants' => 'restaurants#index'
  get 'restaurants/:id' => 'restaurants#show', as: 'restaurant'

  resources :rest
  resources :users, only: [:new, :create]

end
