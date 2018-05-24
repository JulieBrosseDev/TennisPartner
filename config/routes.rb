Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :criterias
  resources :answers, only:[:create, :show] do
    resources :conversations, only: :create
  end
  resources :conversations, only: :show do
    resources :messages, only: :create
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
