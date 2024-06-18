class AddFechaToContenidos < ActiveRecord::Migration[7.0]
  def change
    add_column :contenidos, :fecha, :date
  end
end
