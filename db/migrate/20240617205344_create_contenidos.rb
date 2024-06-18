class CreateContenidos < ActiveRecord::Migration[7.0]
  def change
    create_table :contenidos do |t|
      t.boolean :clases
      t.boolean :ayudantias
      t.boolean :interrogaciones

      t.timestamps
    end
  end
end
