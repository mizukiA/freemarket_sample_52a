Rails.application.routes.draw do
  get 'users/logout' => 'users#logout'
  get 'users/signup' => 'users#signup'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items
  resources :users
end
