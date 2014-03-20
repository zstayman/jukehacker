Jukehacker::Application.routes.draw do
  #root page with navbar, products, footer
  root "welcome#index"
  
  #navbar: for hosts logged in, allow them to see their login information
  get "/host/:id", to: "host#show"

  get "partycreate", to: "parties#new"

  get "party-dashboard/:id", to: "parties#show"

  get "host/:id/party", to: "parties#index"
  
  resources :users 
  resources :hosts
  resources :guests

  resources :songs
  resources :parties
  resources :played_songs
  resources :queued_songs



end
