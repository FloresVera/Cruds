require "application_system_test_case"

class ObjetivosTest < ApplicationSystemTestCase
  setup do
    @objetivo = objetivos(:one)
  end

  test "visiting the index" do
    visit objetivos_url
    assert_selector "h1", text: "Objetivos"
  end

  test "creating a Objetivo" do
    visit objetivos_url
    click_on "New Objetivo"

    fill_in "Asignatura", with: @objetivo.asignatura_id
    fill_in "Objetivo", with: @objetivo.objetivo
    click_on "Create Objetivo"

    assert_text "Objetivo was successfully created"
    click_on "Back"
  end

  test "updating a Objetivo" do
    visit objetivos_url
    click_on "Edit", match: :first

    fill_in "Asignatura", with: @objetivo.asignatura_id
    fill_in "Objetivo", with: @objetivo.objetivo
    click_on "Update Objetivo"

    assert_text "Objetivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Objetivo" do
    visit objetivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Objetivo was successfully destroyed"
  end
end
