Rails.application.routes.draw do
  devise_for :users
  resources :post_images do
  	resource :post_comments, only: [:create]
  	resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

  root "home#index"
  get "home/about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
