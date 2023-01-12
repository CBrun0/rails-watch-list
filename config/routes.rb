Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end

# [:index, :new, :create, :show, :edit, :update, destroy ]

# Rails.application.routes.draw do
#   # Read all
#   get    "movies", to: "movies#index"
#   # Create
#   get    "lists/new", to: "lists#new",  as: :new_movie
#   post   "lists",     to: "lists#create"
#   # Read one - The `show` route needs to be *after* `new` route.
#   get    "movies/:id",      to: "movies#show", as: :movie
#   # Update
#   get    "bookmarks/:id/edit", to: "bookmarks#edit", as: :edit_movie
#   patch  "bookmarks/:id",      to: "bookmarks#update"
#   # Delete
#   delete "bookmarks/:id",      to: "bookmarks#destroy"
# end
