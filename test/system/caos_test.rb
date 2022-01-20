require "application_system_test_case"

class CaosTest < ApplicationSystemTestCase
  setup do
    @cao = caos(:one)
  end

  test "visiting the index" do
    visit caos_url
    assert_selector "h1", text: "Caos"
  end

  test "should create cao" do
    visit caos_url
    click_on "New cao"

    fill_in "Nome", with: @cao.nome
    fill_in "Nome pai", with: @cao.nome_pai
    fill_in "Nome propr", with: @cao.nome_propr
    fill_in "Raca", with: @cao.raca
    click_on "Create Cao"

    assert_text "Cao was successfully created"
    click_on "Back"
  end

  test "should update Cao" do
    visit cao_url(@cao)
    click_on "Edit this cao", match: :first

    fill_in "Nome", with: @cao.nome
    fill_in "Nome pai", with: @cao.nome_pai
    fill_in "Nome propr", with: @cao.nome_propr
    fill_in "Raca", with: @cao.raca
    click_on "Update Cao"

    assert_text "Cao was successfully updated"
    click_on "Back"
  end

  test "should destroy Cao" do
    visit cao_url(@cao)
    click_on "Destroy this cao", match: :first

    assert_text "Cao was successfully destroyed"
  end
end
