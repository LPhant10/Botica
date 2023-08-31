# app/controllers/botica_controller.rb
class BoticaController < ApplicationController
  def inventario
    @productos = Producto.all

    # Resto de tu código para la acción inventario
  end

  # Resto de tus acciones
end
