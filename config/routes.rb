Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'artists', to: 'artists#index'
      get 'artworks', to: 'artworks#create'
      get 'collections', to: 'collections#index'
      # post 'collections', to: 'collections#create'
      post 'artwork_collections', to: 'artwork_collections#create'
      get 'colors', to: 'colors#create'
    end
  end
end
