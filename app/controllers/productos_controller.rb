class ProductosController < ApplicationController
    # Otras acciones del controlador
    
    def create
      @producto = Producto.new(producto_params)
      if @producto.save
        redirect_to inventario_path, notice: 'Producto registrado exitosamente.'
      else
        render :new
      end
    end
    
    # Otras acciones del controlador
    
    private
  
    def producto_params
      params.require(:producto).permit(:codigo, :nombre, :cantidad, :precio, :proveedor)
    end
  end
  
  
