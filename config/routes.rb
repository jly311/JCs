Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'simple_pages/about'

  get 'simple_pages/contact'

  root 'simple_pages#index'
  get 'simple_pages/index'

  # Thank you message after form submission
  post 'simple_pages/thank_you'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

