class AddNombreToInventario < ActiveRecord::Migration
  def change
    add_column :inventarios, :nombre, :string
  end
end
