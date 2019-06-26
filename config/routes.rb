Store::Application.routes.draw do
  root 'letters#index'
  resources :letters
  resources :records do
    collection { post :import }
  end
end
