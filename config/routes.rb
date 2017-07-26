Rails.application.routes.draw do
  devise_for :users

  resources :bands do
    resources :friends
    resources :comments
    resources :posts
  end

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
