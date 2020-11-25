Rails.application.routes.draw do
  devise_for :users
  root to: 'contacts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :profiles, only: [:edit, :update]
  resources :profiles, only: :show do
    resources :messages, only: [ :index, :create ]
  end
  resources :contacts, only: :index
  get '/ideas', to: 'ideas#map'
  resources :chat, only: :index

end
