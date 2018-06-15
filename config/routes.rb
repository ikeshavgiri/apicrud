Rails.application.routes.draw do
  #get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  #get 'users/login', to: 'users#login'
  resources :users



  # get 'movies/index'
  resources :movies do
   resources :comments
  end

  resources :sessions, only: [:new,:create, :destroy]
  get  "/login" ,  to:  "sessions#login"
  post "/login" ,  to:  "sessions#create"
  get  "/logout" , to:  "sessions#destroy"


 get 'movies/like/:id' ,to: 'movies#like_me',as: "like"
 get 'movies/dislike/:id' ,to: 'movies#dislike_me',as: "dislike"



end
