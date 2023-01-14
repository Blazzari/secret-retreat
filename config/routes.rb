Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :rooms do
    resources :bookings, only: %i[create new]
  end
  resources :bookings, only: %i[edit update destroy show]
end
