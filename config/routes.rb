Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  resources :fundraisers

  root to: "fundraisers#index"
end
