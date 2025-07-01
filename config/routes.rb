Rails.application.routes.draw do
  get "/products", to: "products#index"
  root "products#index"

  resources :products do
    resources :subscribers, only: [ :create ]
  end
  resource :unsubscribe, only: [ :show ]

  resource :session
  resources :passwords, param: :token
end
