Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :profiles
      resources :profile_images
      # get '/profiles/:id/avatar', to: 'profiles#latest' 
    end
  end
end
