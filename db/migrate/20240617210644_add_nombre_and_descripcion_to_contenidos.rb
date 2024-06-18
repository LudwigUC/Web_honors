class AddNombreAndDescripcionToContenidos < ActiveRecord::Migration[7.0]
  def change
    add_column :contenidos, :nombre, :string
    add_column :contenidos, :descripcion, :text
  end
end
