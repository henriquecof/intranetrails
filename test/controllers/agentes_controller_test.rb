require 'test_helper'

class AgentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agente = agentes(:one)
  end

  test "should get index" do
    get agentes_url
    assert_response :success
  end

  test "should get new" do
    get new_agente_url
    assert_response :success
  end

  test "should create agente" do
    assert_difference('Agente.count') do
      post agentes_url, params: { agente: { cidade: @agente.cidade, cpfcnpj: @agente.cpfcnpj, email: @agente.email, endereco: @agente.endereco, fone: @agente.fone, nome: @agente.nome, tipo: @agente.tipo, uf: @agente.uf } }
    end

    assert_redirected_to agente_url(Agente.last)
  end

  test "should show agente" do
    get agente_url(@agente)
    assert_response :success
  end

  test "should get edit" do
    get edit_agente_url(@agente)
    assert_response :success
  end

  test "should update agente" do
    patch agente_url(@agente), params: { agente: { cidade: @agente.cidade, cpfcnpj: @agente.cpfcnpj, email: @agente.email, endereco: @agente.endereco, fone: @agente.fone, nome: @agente.nome, tipo: @agente.tipo, uf: @agente.uf } }
    assert_redirected_to agente_url(@agente)
  end

  test "should destroy agente" do
    assert_difference('Agente.count', -1) do
      delete agente_url(@agente)
    end

    assert_redirected_to agentes_url
  end
end
