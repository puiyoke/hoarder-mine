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
  get 'report/:id' => 'reports#new'
  post 'report' => 'reports#create'

  get 'admin/report' => 'admin#report'
  get 'admin/suggest' => 'admin#suggest'

  get 'admin/report_review/:id' => 'admin#report_review'
  get 'admin/suggest_review/:id' => 'admin#suggest_review'
  post 'admin/report_review/:id' => 'admin#report_update'
  post 'admin/suggest_review/:id' => 'admin#suggest_update'
end
