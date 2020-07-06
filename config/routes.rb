Rails.application.routes.draw do
  resources :users
  resources :movies
  resources :attendences, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
