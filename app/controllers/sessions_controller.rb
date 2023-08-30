class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to botica_inicio_path # Redirige a la nueva interfaz en BoticaController
    else
      flash.now[:alert] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path # Cambia esto a la ruta que quieras después de cerrar sesión
  end
end
