class RemoveFechaFromContenidos < ActiveRecord::Migration[7.0]
  def change
    remove_column :contenidos, :fecha, :date
  end
end
