class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :codigo
      t.string :nombre
      t.integer :cantidad
      t.decimal :precio
      t.string :proveedor

      t.timestamps
    end
  end
end
