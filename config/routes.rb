Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
  	namespace 'v1' do
  		resources :posts 
        resources :comments
  	
  	end
  	
  end
  resources :users, only: :create do
  collection do
    post 'confirm'
    post 'login'
  end
  end

end
