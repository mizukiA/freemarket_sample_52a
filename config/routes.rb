Rails.application.routes.draw do
  devise_for :cards
  devise_for :addresses
  devise_for :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items do
    collection do
      get 'buy'
    end
  end
  resources :users do
    collection do
      get 'logout'
      get 'signup'
      get 'profile'
      get 'identification'
      get 'card'
    end
  end
end
