class Producto < ActiveRecord::Base
  attr_accessible :nombre
  has_many :inventarios
  has_many :productoingresos
  has_many :hojaentregas
end
