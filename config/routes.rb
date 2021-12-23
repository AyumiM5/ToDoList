Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  
  resources :lists, only: [:new, :create, :edit, :update, :destroy] do
    resources :cards, only: [:new, :create]
  end
  
end
