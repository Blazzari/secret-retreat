Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"

  resources :rooms do
    resources :bookings, only: %i[create new]
    resources :reviews, only: %i[create new]
  end
  resources :bookings, only: %i[edit update destroy show]
end
