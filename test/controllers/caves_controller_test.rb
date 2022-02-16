require "test_helper"

class CavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cafe = caves(:one)
  end

  test "should get index" do
    get caves_url
    assert_response :success
  end

  test "should get new" do
    get new_cafe_url
    assert_response :success
  end

  test "should create cafe" do
    assert_difference('Cafe.count') do
      post caves_url, params: { cafe: { maquina_primerpiso: @cafe.maquina_primerpiso, maquina_segundopiso: @cafe.maquina_segundopiso, maquina_sl: @cafe.maquina_sl, name: @cafe.name, sku: @cafe.sku, stock_inicial: @cafe.stock_inicial, valor_neto_unitario: @cafe.valor_neto_unitario } }
    end

    assert_redirected_to cafe_url(Cafe.last)
  end

  test "should show cafe" do
    get cafe_url(@cafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_cafe_url(@cafe)
    assert_response :success
  end

  test "should update cafe" do
    patch cafe_url(@cafe), params: { cafe: { maquina_primerpiso: @cafe.maquina_primerpiso, maquina_segundopiso: @cafe.maquina_segundopiso, maquina_sl: @cafe.maquina_sl, name: @cafe.name, sku: @cafe.sku, stock_inicial: @cafe.stock_inicial, valor_neto_unitario: @cafe.valor_neto_unitario } }
    assert_redirected_to cafe_url(@cafe)
  end

  test "should destroy cafe" do
    assert_difference('Cafe.count', -1) do
      delete cafe_url(@cafe)
    end

    assert_redirected_to caves_url
  end
end
