ASUSGate::Application.routes.draw do
  devise_for :users, only: :sessions
  resources :visits, only: :index
  root to: 'ips#index'
end
