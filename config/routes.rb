Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  resources :posts, only: [:create, :edit, :update, :destroy] do
    member do
      post "upvote"
      post "downvote"
    end
  end

  # Custom sign-out route
  get '/users/sign_out', to: 'custom_sessions#destroy', as: :custom_destroy_user_session

  # Set Route to User's profile and posts
  get 'user_profile_and_posts/profile', to: 'user_profile_and_posts#profile'

  # Define the custom route for editing a post under the user's profile
  patch 'users/:user_id/posts/:id/edit', to: 'user_profile_and_posts#edit', as: :edit_user_profile_post

  # For editing posts
  resources :users do
    resources :posts
  end
end
