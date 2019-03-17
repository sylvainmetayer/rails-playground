Rails.application.routes.draw do
  resources :categories
  root 'pages#index'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
