# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120625190158) do

  create_table "asesors", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "identidad"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cuota", :force => true do |t|
    t.string   "estado"
    t.string   "liquidacion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "inventarios", :force => true do |t|
    t.integer  "producto_id"
    t.integer  "cantidad"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pedidos", :force => true do |t|
    t.integer  "asesor_id"
    t.string   "evento"
    t.string   "ciudad"
    t.date     "fecha_evento"
    t.string   "nombre_cliente"
    t.string   "identidad_cliente"
    t.string   "telefono_cliente"
    t.string   "celular_cliente"
    t.string   "correo_electronico"
    t.string   "direccion_cliente"
    t.string   "ciudad_cliente"
    t.string   "departamento_cliente"
    t.string   "trabajo_cliente"
    t.string   "cargo_cliente"
    t.string   "telefono_trabajo"
    t.time     "inicio_hora_contacto"
    t.time     "fin_hora_contacto"
    t.string   "conyugue"
    t.string   "referencia"
    t.string   "telefono_referencia"
    t.string   "alumno"
    t.string   "grado"
    t.string   "jornada"
    t.float    "valor_credito"
    t.float    "abono_inicial"
    t.integer  "numero_cuotas"
    t.float    "valor_cuota"
    t.date     "fecha_inicio_pago"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "numero_pedido"
    t.string   "telefono_conyugue"
    t.string   "referencia2"
    t.string   "telefono_referencia2"
    t.float    "descuento"
    t.float    "mora"
    t.string   "tipo_pago"
    t.date     "fecha_ingreso"
    t.integer  "num_dias_descuento"
    t.string   "rvi"
  end

  create_table "permisos", :force => true do |t|
    t.string   "acesso"
    t.string   "tipo_acesso"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "permisos_por_rols", :force => true do |t|
    t.integer  "rol_id"
    t.integer  "permiso_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "producto_ingresos", :force => true do |t|
    t.integer  "producto_id"
    t.date     "fecha_ingreso"
    t.string   "documento_ingreso"
    t.integer  "cantidad_ingreso"
    t.float    "valor_producto"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "producto_pedidos", :force => true do |t|
    t.integer  "producto_id"
    t.integer  "pedido_id"
    t.integer  "cantidad"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rols", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transitos", :force => true do |t|
    t.integer  "producto_id"
    t.integer  "asesor_id"
    t.integer  "cantidad"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.string   "password_hash"
    t.string   "password_salt"
    t.integer  "rol_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "usuarios", ["rol_id"], :name => "index_usuarios_on_rol_id"

end
