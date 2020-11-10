require 'test_helper'

class PerfilEgresadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perfil_egresado = perfil_egresados(:one)
  end

  test "should get index" do
    get perfil_egresados_url
    assert_response :success
  end

  test "should get new" do
    get new_perfil_egresado_url
    assert_response :success
  end

  test "should create perfil_egresado" do
    assert_difference('PerfilEgresado.count') do
      post perfil_egresados_url, params: { perfil_egresado: { asignatura_id: @perfil_egresado.asignatura_id, perfil: @perfil_egresado.perfil } }
    end

    assert_redirected_to perfil_egresado_url(PerfilEgresado.last)
  end

  test "should show perfil_egresado" do
    get perfil_egresado_url(@perfil_egresado)
    assert_response :success
  end

  test "should get edit" do
    get edit_perfil_egresado_url(@perfil_egresado)
    assert_response :success
  end

  test "should update perfil_egresado" do
    patch perfil_egresado_url(@perfil_egresado), params: { perfil_egresado: { asignatura_id: @perfil_egresado.asignatura_id, perfil: @perfil_egresado.perfil } }
    assert_redirected_to perfil_egresado_url(@perfil_egresado)
  end

  test "should destroy perfil_egresado" do
    assert_difference('PerfilEgresado.count', -1) do
      delete perfil_egresado_url(@perfil_egresado)
    end

    assert_redirected_to perfil_egresados_url
  end
end
