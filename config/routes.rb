Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'products/create'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
