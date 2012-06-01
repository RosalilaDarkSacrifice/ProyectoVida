class CreateAsesors < ActiveRecord::Migration
  def change
    create_table :asesors do |t|
      t.string :nombre
      t.string :telefono
      t.string :identidad

      t.timestamps
    end
  end
end
