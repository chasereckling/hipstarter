Rails.application.routes.draw do
  root to: "landing_page#index"

  devise_for :users, :controllers => {:registrations => "users/registrations"}

  resources :fundraisers
  resources :donations

  get '/stripe_testing', to: 'stripe_testing#index', as: 'stripe_testing'
  get '/landing_page', to: 'landing_page#index'
end
