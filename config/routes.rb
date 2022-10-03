Rails.application.routes.draw do

  resources :dog_houses, only: [:show] do
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show, :index, :create]

  resources :reviews do
    resources :comments
  end
  
end

