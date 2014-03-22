VisionhouseRails::Application.routes.draw do
  resources :users

  get '/' , to: 'view_pages#index'
end
