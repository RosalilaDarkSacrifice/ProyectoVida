class Producto < ActiveRecord::Base
  attr_accessible :nombre
  has_many :inventarios
end
