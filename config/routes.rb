Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :users
  resources :books
  resources :comments
  resources :posts do
  	collection do
  		get 'most_like'
  	end
  	member do
  		get 'most_comment'
  	end
 	end
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
end
