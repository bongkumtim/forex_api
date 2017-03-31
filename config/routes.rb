Rails.application.routes.draw do
  resources :posts
  root 'posts#index'

  match '/convert' => "posts#convert_currency", via: :post
  match '/convert' => "posts#convert_currency", via: :get
end
