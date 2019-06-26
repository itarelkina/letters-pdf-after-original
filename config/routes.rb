Rails.application.routes.draw do
  devise_for :users
  root 'letters#index'
  resources :letters
  resources :records do
    collection { post :import }
  end
end
