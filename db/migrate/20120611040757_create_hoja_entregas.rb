class CreateHojaEntregas < ActiveRecord::Migration
  def change
    create_table :hoja_entregas do |t|
      t.date :fecha
      t.string :documento
      t.integer :producto_id
      t.integer :cantidad
      t.boolean :es_devolucion

      t.timestamps
    end
  end
end
