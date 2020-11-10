require 'test_helper'

class AreasFormacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @areas_formacion = areas_formacions(:one)
  end

  test "should get index" do
    get areas_formacions_url
    assert_response :success
  end

  test "should get new" do
    get new_areas_formacion_url
    assert_response :success
  end

  test "should create areas_formacion" do
    assert_difference('AreasFormacion.count') do
      post areas_formacions_url, params: { areas_formacion: { area_fomacion: @areas_formacion.area_fomacion } }
    end

    assert_redirected_to areas_formacion_url(AreasFormacion.last)
  end

  test "should show areas_formacion" do
    get areas_formacion_url(@areas_formacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_areas_formacion_url(@areas_formacion)
    assert_response :success
  end

  test "should update areas_formacion" do
    patch areas_formacion_url(@areas_formacion), params: { areas_formacion: { area_fomacion: @areas_formacion.area_fomacion } }
    assert_redirected_to areas_formacion_url(@areas_formacion)
  end

  test "should destroy areas_formacion" do
    assert_difference('AreasFormacion.count', -1) do
      delete areas_formacion_url(@areas_formacion)
    end

    assert_redirected_to areas_formacions_url
  end
end
