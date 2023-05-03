Rails.application.routes.draw do
  resources :profile_images
  namespace :api do
    namespace :v1 do
      resources :users
      resources :profiles
      get '/profiles/:id/avatar', to: 'profiles#latest' 
    end
  end
end
