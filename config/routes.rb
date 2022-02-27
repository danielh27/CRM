Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  resources :prospects, only: %i[index new create show edit update]

  resources :prospects, only: [:show] do
    resources :conversations, only: [:create]
  end
end
