Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/relationships/build', to: 'relationships#create', :as => "follwers"
  # resources :relationships
  resources :users 
  resources :chirps do
    resources :squwaks
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # resources :users do
  #   resources :chirps do
  #     resources :squwaks
  #   end 
  #   resources :chirps do
  #     resource :squwaks
  

end 
end 
