Rails.application.routes.draw do
  #REST Resource
  resources :articles

  root 'home#index'

  get 'index' => 'home#index'
  get 'quienes' => 'home#quienes'
  get 'servicios' => 'home#servicios'
  get 'contacto' => 'home#contacto'
  get 'ingreso' => 'home#ingreso'
  get 'registro' => 'home#registro'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
