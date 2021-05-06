Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  api_guard_routes for: 'users'
  resources :products
  resource :favourites, only: [:create, :destroy]
  get '/favourites', to: 'favourites#index'
  
end
