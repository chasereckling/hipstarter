Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  resources :fundraisers
  resources :charges

  get '/stripe_testing', to: 'stripe_testing#index', as: 'stripe_testing'

  root to: "fundraisers#index"
end
