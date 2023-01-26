Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "my_rooms", to: "rooms#my_rooms"
  resources :rooms do
    resources :bookings, only: %i[create new]
    resources :reviews, only: %i[create new]
  end
  resources :bookings, only: %i[edit update destroy show]
end
