Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root "pages#index"
  get "me/settings", to: 'accounts#edit', as: 'own_settings'
  put "me/settings", to: 'accounts#update'
  resources :posts, only: [:new, :create]
end
