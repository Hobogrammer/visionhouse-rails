VisionhouseRails::Application.routes.draw do
  resources :subjects

  devise_for :users
  resources :applications

  get '/' , to: 'view_pages#index'

  match 'auth/facebook/callback', to: 'sessions#create', as: 'signin', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  devise_scope :user do
    get '/application', to: 'devise/registrations#new'
  end
end
