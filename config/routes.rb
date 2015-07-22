Rails.application.routes.draw do
  devise_for :users

  resources :recipients

  root to: "recipients#index"
end
