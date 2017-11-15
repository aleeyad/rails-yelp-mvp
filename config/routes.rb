Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  root to: 'restaurants#index'
end
