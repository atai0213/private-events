Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get 'events/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"





  get "/users/sign_in", to: "sessions#new"


  devise_scope :user do
    # write all your routes inside this block
    get "/users/sign_in", to: "sessions#new"
    get "users/sign_out", to: "devise/sessions#destroy"
    resources :events
    get 'users/:id' => 'users#show'
  end
end
