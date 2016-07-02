Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :order_forms
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  get '/auth/failure' => 'sessions#failure'
end
