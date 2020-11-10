require "application_system_test_case"

class PerfilEgresadosTest < ApplicationSystemTestCase
  setup do
    @perfil_egresado = perfil_egresados(:one)
  end

  test "visiting the index" do
    visit perfil_egresados_url
    assert_selector "h1", text: "Perfil Egresados"
  end

  test "creating a Perfil egresado" do
    visit perfil_egresados_url
    click_on "New Perfil Egresado"

    fill_in "Asignatura", with: @perfil_egresado.asignatura_id
    fill_in "Perfil", with: @perfil_egresado.perfil
    click_on "Create Perfil egresado"

    assert_text "Perfil egresado was successfully created"
    click_on "Back"
  end

  test "updating a Perfil egresado" do
    visit perfil_egresados_url
    click_on "Edit", match: :first

    fill_in "Asignatura", with: @perfil_egresado.asignatura_id
    fill_in "Perfil", with: @perfil_egresado.perfil
    click_on "Update Perfil egresado"

    assert_text "Perfil egresado was successfully updated"
    click_on "Back"
  end

  test "destroying a Perfil egresado" do
    visit perfil_egresados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perfil egresado was successfully destroyed"
  end
end
