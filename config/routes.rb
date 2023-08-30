Rails.application.routes.draw do
  root "users#new"  # Ruta de la página de registro como la página de inicio
  
  # Rutas de sesiones (login)
  get    '/login',  to: 'sessions#new',     as: :login
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  # Rutas de usuario (registro)
  resources :users, only: [:new, :create]
  
  # Define other application routes per your requirements

  # Defines the root path route ("/")
  # root "controller#action"
end
