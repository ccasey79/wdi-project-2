Rails.application.routes.draw do
  resources :comments
  resources :recipes
  devise_for :users
  root "statics#homepage"

  get "/users/:id", to: "users#show"

end








