require 'test_helper'

class HojaEntregasControllerTest < ActionController::TestCase
  setup do
    @hoja_entrega = hoja_entregas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hoja_entregas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hoja_entrega" do
    assert_difference('HojaEntrega.count') do
      post :create, hoja_entrega: { cantidad: @hoja_entrega.cantidad, documento: @hoja_entrega.documento, es_devolucion: @hoja_entrega.es_devolucion, fecha: @hoja_entrega.fecha, producto_id: @hoja_entrega.producto_id }
    end

    assert_redirected_to hoja_entrega_path(assigns(:hoja_entrega))
  end

  test "should show hoja_entrega" do
    get :show, id: @hoja_entrega
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hoja_entrega
    assert_response :success
  end

  test "should update hoja_entrega" do
    put :update, id: @hoja_entrega, hoja_entrega: { cantidad: @hoja_entrega.cantidad, documento: @hoja_entrega.documento, es_devolucion: @hoja_entrega.es_devolucion, fecha: @hoja_entrega.fecha, producto_id: @hoja_entrega.producto_id }
    assert_redirected_to hoja_entrega_path(assigns(:hoja_entrega))
  end

  test "should destroy hoja_entrega" do
    assert_difference('HojaEntrega.count', -1) do
      delete :destroy, id: @hoja_entrega
    end

    assert_redirected_to hoja_entregas_path
  end
end
