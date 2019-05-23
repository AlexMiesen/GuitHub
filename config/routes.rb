Rails.application.routes.draw do
  get 'instruments/index'
  root to: 'pages#home'
  devise_for :users

  # AS RENTER: index, show / AS OWNER: new, create
  resources :instruments, only: [:index, :show, :new, :create, :edit, :update] do
    # AS RENTER
    resources :bookings, only: [:new, :create]
  end

  # AS BOTH
  resource :dashboard, only: [:show]

  # AS OWNER
  resources :bookings, only: [] do
    member do
      patch :accept
      patch :decline

    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
