JsonifyMe::Application.routes.draw do
  get "dashboard/show"
  get "dashboard/settings"
  devise_for :users
  get "home/index"
  match '/:username' => 'home#me', via: [:get], defaults: {format: :json}, as: :me

  authenticated :user do
    root :to => "dashboard#show", as: :authenticated_root
  end
  
  resources :users
  resources :people, only: [:update]

  root 'home#index'
end
