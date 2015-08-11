Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'signup', to: 'users#new'
  get 'login' => 'sessions#new'
  get 'update' => 'users#edit'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end