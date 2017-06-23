Rails.application.routes.draw do
  root "users#index"
  resources :users, only: [:index, :show] do
    resource :downloads, only: :show
  end
end
