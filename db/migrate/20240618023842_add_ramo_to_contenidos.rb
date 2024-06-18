class AddRamoToContenidos < ActiveRecord::Migration[7.0]
  def change
    add_column :contenidos, :ramo, :string
  end
end
