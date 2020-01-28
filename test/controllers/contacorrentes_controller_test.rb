require 'test_helper'

class ContacorrentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacorrente = contacorrentes(:one)
  end

  test "should get index" do
    get contacorrentes_url
    assert_response :success
  end

  test "should get new" do
    get new_contacorrente_url
    assert_response :success
  end

  test "should create contacorrente" do
    assert_difference('Contacorrente.count') do
      post contacorrentes_url, params: { contacorrente: { agencia: @contacorrente.agencia, agente: @contacorrente.agente, banco: @contacorrente.banco, descricao: @contacorrente.descricao, tipo: @contacorrente.tipo } }
    end

    assert_redirected_to contacorrente_url(Contacorrente.last)
  end

  test "should show contacorrente" do
    get contacorrente_url(@contacorrente)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacorrente_url(@contacorrente)
    assert_response :success
  end

  test "should update contacorrente" do
    patch contacorrente_url(@contacorrente), params: { contacorrente: { agencia: @contacorrente.agencia, agente: @contacorrente.agente, banco: @contacorrente.banco, descricao: @contacorrente.descricao, tipo: @contacorrente.tipo } }
    assert_redirected_to contacorrente_url(@contacorrente)
  end

  test "should destroy contacorrente" do
    assert_difference('Contacorrente.count', -1) do
      delete contacorrente_url(@contacorrente)
    end

    assert_redirected_to contacorrentes_url
  end
end
