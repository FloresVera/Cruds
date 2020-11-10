require "application_system_test_case"

class AreasFormacionsTest < ApplicationSystemTestCase
  setup do
    @areas_formacion = areas_formacions(:one)
  end

  test "visiting the index" do
    visit areas_formacions_url
    assert_selector "h1", text: "Areas Formacions"
  end

  test "creating a Areas formacion" do
    visit areas_formacions_url
    click_on "New Areas Formacion"

    fill_in "Area fomacion", with: @areas_formacion.area_fomacion
    click_on "Create Areas formacion"

    assert_text "Areas formacion was successfully created"
    click_on "Back"
  end

  test "updating a Areas formacion" do
    visit areas_formacions_url
    click_on "Edit", match: :first

    fill_in "Area fomacion", with: @areas_formacion.area_fomacion
    click_on "Update Areas formacion"

    assert_text "Areas formacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Areas formacion" do
    visit areas_formacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Areas formacion was successfully destroyed"
  end
end
