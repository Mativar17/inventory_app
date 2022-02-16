require "test_helper"

class AseosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aseo = aseos(:one)
  end

  test "should get index" do
    get aseos_url
    assert_response :success
  end

  test "should get new" do
    get new_aseo_url
    assert_response :success
  end

  test "should create aseo" do
    assert_difference('Aseo.count') do
      post aseos_url, params: { aseo: { compra_mes: @aseo.compra_mes, name: @aseo.name, sku: @aseo.sku, stock_inicial: @aseo.stock_inicial, valor_neto_unitario: @aseo.valor_neto_unitario } }
    end

    assert_redirected_to aseo_url(Aseo.last)
  end

  test "should show aseo" do
    get aseo_url(@aseo)
    assert_response :success
  end

  test "should get edit" do
    get edit_aseo_url(@aseo)
    assert_response :success
  end

  test "should update aseo" do
    patch aseo_url(@aseo), params: { aseo: { compra_mes: @aseo.compra_mes, name: @aseo.name, sku: @aseo.sku, stock_inicial: @aseo.stock_inicial, valor_neto_unitario: @aseo.valor_neto_unitario } }
    assert_redirected_to aseo_url(@aseo)
  end

  test "should destroy aseo" do
    assert_difference('Aseo.count', -1) do
      delete aseo_url(@aseo)
    end

    assert_redirected_to aseos_url
  end
end
