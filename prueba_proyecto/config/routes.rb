Rails.application.routes.draw do
  
  resources :api_rests

  namespace :api, defaults: { format: 'json' } do
  	namespace :v1 do
  		resources :api_rests
  	end
  end
  resources :articles

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
