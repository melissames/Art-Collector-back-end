Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'artworks', to: 'artworks#create'
    end
  end
end
