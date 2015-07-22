Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  resources :recipients

  root to: "recipients#index"
  get '/stripe_testing', to: 'stripe_testing#index', as: 'stripe_testing'
end
