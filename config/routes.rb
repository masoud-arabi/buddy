Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :profiles, only: [:show, :edit, :update]
  resources :users, only:[] do
    resources :conversations, only: [:create]
  end
  resources :connections, only: :index
  get '/ideas', to: 'ideas#map'
  resources :conversations, only: [:index, :show] do
    resources :messages, only: :create
  end
end

