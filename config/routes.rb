Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  resources :prospects

  resources :prospects, only: [:show] do
    resources :conversations, only: [:create]
  end
end
