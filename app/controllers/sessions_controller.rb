class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:user_email] = user.email # Almacena el correo del usuario en la sesión
      redirect_to botica_inicio_path # Redirige a la nueva interfaz en BoticaController
    else
      flash.now[:alert] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_email] = nil # Limpia la variable de sesión del correo
    redirect_to login_path # Redirige a la página de inicio de sesión después de cerrar sesión
  end
end

