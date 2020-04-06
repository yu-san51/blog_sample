Rails.application.routes.draw do
  devise_for :users
  resources :post_image
  resources :user, only: [:show, :edit, :update]

  root "home#index"
  get "home/about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
