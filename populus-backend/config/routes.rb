Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resource :photos, only: [:index, :create]
  
      post 'authenticate', to: 'authentication#create'
      post '/users', to: 'users#create'
      post '/login', to: 'users#login'
      post '/photo-upload', to: 'photos#upload_photo'
    end    
  end
end
