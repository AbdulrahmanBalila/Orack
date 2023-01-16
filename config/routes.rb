Rails.application.routes.draw do
  resources :cars
 
  root "home#index"
  get "home/details/:id", to: 'home#details'
end
