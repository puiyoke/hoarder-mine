Rails.application.routes.draw do
  devise_for :users
  resources :cards, :ownerships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get 'owned' => 'users#owned'
  get 'wishlist' => 'users#wishlist'

end
