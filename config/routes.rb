Rails.application.routes.draw do
  resources :cars
 
  root "home#index"
  # to show each individual car
  get "home/details/:id", to: 'home#details'
  # to refresh the page so it can process the button function and show the alert
  post "home/book", to: 'home#book'
end
