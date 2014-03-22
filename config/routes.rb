VisionhouseRails::Application.routes.draw do
  devise_for :users
  resources :users

  get '/' , to: 'view_pages#index'
end
