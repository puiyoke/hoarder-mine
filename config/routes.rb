Rails.application.routes.draw do
  devise_for :users
  resources :cards, :ownerships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get 'suggest' => 'users#suggest'
  get 'status' => 'users#status'
  get 'report/:id' => 'users#report'
  get 'search' => 'cards#search'
  get 'owned' => 'users#owned'
  get 'wishlist' => 'users#wishlist'
  get 'add_owned/:id' => 'ownerships#own'
  get 'add_wishlist/:id' => 'ownerships#wish'
  get 'delete_collection/:id' => 'ownerships#destroy'

  post 'suggest/new' => 'suggestions#create'
  post 'report/new' => 'reports#create'
end
