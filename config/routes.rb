Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :sub_forums
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "sub_forums#index"
end
