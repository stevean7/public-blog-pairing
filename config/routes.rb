Rails.application.routes.draw do
  resources :items
  resources :ratings
  resources :posts do
    resources :ratings
    resources :comments
  end
  root to: 'home#index'
end
