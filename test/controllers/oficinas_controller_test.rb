require "test_helper"

class OficinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oficina = oficinas(:one)
  end

  test "should get index" do
    get oficinas_url
    assert_response :success
  end

  test "should get new" do
    get new_oficina_url
    assert_response :success
  end

  test "should create oficina" do
    assert_difference('Oficina.count') do
      post oficinas_url, params: { oficina: { compra_mes: @oficina.compra_mes, name: @oficina.name, sku: @oficina.sku, stock_inicial: @oficina.stock_inicial, valor_neto_unitario: @oficina.valor_neto_unitario } }
    end

    assert_redirected_to oficina_url(Oficina.last)
  end

  test "should show oficina" do
    get oficina_url(@oficina)
    assert_response :success
  end

  test "should get edit" do
    get edit_oficina_url(@oficina)
    assert_response :success
  end

  test "should update oficina" do
    patch oficina_url(@oficina), params: { oficina: { compra_mes: @oficina.compra_mes, name: @oficina.name, sku: @oficina.sku, stock_inicial: @oficina.stock_inicial, valor_neto_unitario: @oficina.valor_neto_unitario } }
    assert_redirected_to oficina_url(@oficina)
  end

  test "should destroy oficina" do
    assert_difference('Oficina.count', -1) do
      delete oficina_url(@oficina)
    end

    assert_redirected_to oficinas_url
  end
end
