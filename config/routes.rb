Rails.application.routes.draw do
  resources :cars
  
  root "home#index"
  # to show each individual car
  get "home/details/:id", to: 'home#details'
  # to refresh the page so it can process the "book" function and show the alert
  post "home/book", to: 'home#book'
  
  # expermental booking model WIP*
  resources :bookings
  post "bookings/create", to: 'bookings#create'
end
