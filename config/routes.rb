Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  
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
      get 'addcard'
      get 'sms'
      get 'success'
    end
  end

  resources :addresses, only: [:new, :create]
  resources :cards, only: [:new, :create]
end
