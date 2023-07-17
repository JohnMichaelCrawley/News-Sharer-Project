Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # Set the main page for the website by
  # setting a GET request for the index 

  # Root the main page to home.erb 
  root 'pages#home'


end
