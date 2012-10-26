class CreateNotaEntregas < ActiveRecord::Migration
  def change
    create_table :nota_entregas do |t|
      t.date :fecha
      t.string :numero
      t.integer :asesor_id
      t.integer :producto_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
