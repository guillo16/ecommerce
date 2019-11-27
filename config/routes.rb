Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'

  resources :categories, only: [:show, :new, :create, :destroy] do
    resources :products, only: [:create]
  end
  resources :products, only: [:index, :show] do
    resources :reviews, only: :create
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
