Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      resources :users, only: [:index, :update]
      resources :posts, only: [:index, :create, :update, :destroy]
      resources :likes, only: [:index, :update, :create]
end
