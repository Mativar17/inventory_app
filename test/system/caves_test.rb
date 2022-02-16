require "application_system_test_case"

class CavesTest < ApplicationSystemTestCase
  setup do
    @cafe = caves(:one)
  end

  test "visiting the index" do
    visit caves_url
    assert_selector "h1", text: "Caves"
  end

  test "creating a Cafe" do
    visit caves_url
    click_on "New Cafe"

    fill_in "Maquina primerpiso", with: @cafe.maquina_primerpiso
    fill_in "Maquina segundopiso", with: @cafe.maquina_segundopiso
    fill_in "Maquina sl", with: @cafe.maquina_sl
    fill_in "Name", with: @cafe.name
    fill_in "Sku", with: @cafe.sku
    fill_in "Stock inicial", with: @cafe.stock_inicial
    fill_in "Valor neto unitario", with: @cafe.valor_neto_unitario
    click_on "Create Cafe"

    assert_text "Cafe was successfully created"
    click_on "Back"
  end

  test "updating a Cafe" do
    visit caves_url
    click_on "Edit", match: :first

    fill_in "Maquina primerpiso", with: @cafe.maquina_primerpiso
    fill_in "Maquina segundopiso", with: @cafe.maquina_segundopiso
    fill_in "Maquina sl", with: @cafe.maquina_sl
    fill_in "Name", with: @cafe.name
    fill_in "Sku", with: @cafe.sku
    fill_in "Stock inicial", with: @cafe.stock_inicial
    fill_in "Valor neto unitario", with: @cafe.valor_neto_unitario
    click_on "Update Cafe"

    assert_text "Cafe was successfully updated"
    click_on "Back"
  end

  test "destroying a Cafe" do
    visit caves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cafe was successfully destroyed"
  end
end
