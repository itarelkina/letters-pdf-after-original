Store::Application.routes.draw do
  root to: 'letters#index'
  resources :letters
end
