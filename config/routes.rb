Rails.application.routes.draw do
  root "users#new"  # Ruta de la página de registro como la página de inicio

  # Rutas de sesiones (login)
  get    '/login',  to: 'sessions#new',     as: :login
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  # Rutas de usuario (registro)
  resources :users, only: [:new, :create]

  # Ruta para la página de inicio (BoticaController)
  get '/inicio', to: 'botica#inicio', as: :botica_inicio

  # Rutas para los apartados
  get '/inventario', to: 'botica#inventario', as: :inventario
  get '/ventas', to: 'botica#ventas', as: :ventas
  get '/clientes', to: 'botica#clientes', as: :clientes
  get '/proveedores', to: 'botica#proveedores', as: :proveedores
  get '/reportes', to: 'botica#reportes', as: :reportes
  get '/buscar', to: 'botica#buscar', as: :buscar

  # Ruta para cambiar el idioma
  post '/set_locale', to: 'application#set_locale', as: :set_locale

  # Ruta para productos
  post '/productos', to: 'productos#create', as: :productos

  # Define other application routes per your requirements

  # Defines the root path route ("/")
  # root "controller#action"
end
