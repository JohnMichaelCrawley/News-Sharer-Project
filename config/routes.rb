Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # Set the main page for the website by
  # setting a GET request for the index 

  # Root the main page to home.erb 
  root 'pages#home'

  # Create Posts Resource
  resources :posts, only: [:create]
  # For deletion 
  resources :posts, only: [:destroy]
  resources :posts

# Custom sign-out route
get '/users/sign_out', to: 'custom_sessions#destroy', as: :custom_destroy_user_session


# Set Route to User's profile and posts
get 'user_profile_and_posts/profile', to: 'user_profile_and_posts#profile'




end
