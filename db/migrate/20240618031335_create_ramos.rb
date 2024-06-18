class CreateRamos < ActiveRecord::Migration[7.0]
  def change
    create_table :ramos do |t|
      t.string :Nombre
      t.date :Fecha

      t.timestamps
    end
  end
end
