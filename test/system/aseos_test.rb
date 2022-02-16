require "application_system_test_case"

class AseosTest < ApplicationSystemTestCase
  setup do
    @aseo = aseos(:one)
  end

  test "visiting the index" do
    visit aseos_url
    assert_selector "h1", text: "Aseos"
  end

  test "creating a Aseo" do
    visit aseos_url
    click_on "New Aseo"

    fill_in "Compra mes", with: @aseo.compra_mes
    fill_in "Name", with: @aseo.name
    fill_in "Sku", with: @aseo.sku
    fill_in "Stock inicial", with: @aseo.stock_inicial
    fill_in "Valor neto unitario", with: @aseo.valor_neto_unitario
    click_on "Create Aseo"

    assert_text "Aseo was successfully created"
    click_on "Back"
  end

  test "updating a Aseo" do
    visit aseos_url
    click_on "Edit", match: :first

    fill_in "Compra mes", with: @aseo.compra_mes
    fill_in "Name", with: @aseo.name
    fill_in "Sku", with: @aseo.sku
    fill_in "Stock inicial", with: @aseo.stock_inicial
    fill_in "Valor neto unitario", with: @aseo.valor_neto_unitario
    click_on "Update Aseo"

    assert_text "Aseo was successfully updated"
    click_on "Back"
  end

  test "destroying a Aseo" do
    visit aseos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aseo was successfully destroyed"
  end
end
