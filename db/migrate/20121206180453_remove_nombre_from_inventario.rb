class RemoveNombreFromInventario < ActiveRecord::Migration
  def up
    remove_column :inventarios, :nombre
      end

  def down
    add_column :inventarios, :nombre, :string
  end
end
