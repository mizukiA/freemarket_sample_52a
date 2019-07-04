Rails.application.routes.draw do

  devise_for :users, controllers: { 
                                    omniauth_callbacks: "users/omniauth_callbacks",
                                    registrations: "users/registrations",
                                    confirmations: "users/confirmations",
                                    sessions: "users/sessions",
                                    passwords: "users/passwords"
                                  }

  devise_scope :user do
    get 'sms', to: 'users/registrations#sms'
    get 'sns', to: 'users/registrations#sns'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items do
    member do
    # collection do
      get 'buy'
      post 'pay'
    end
    resources :comments, only: [:create,:destroy]
    resources :item_images, only: [:destroy]
  end

  resources :users do
    collection do
      get 'logout'
      get 'signup'
      get 'profile'
      get 'identification'
      get 'card'
      get 'addcard'
      get 'success'
    end
  end


  resources :addresses, only: [:new, :create]

  resources :cards, only: [:new, :create] do
    collection do
      get 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end

end
