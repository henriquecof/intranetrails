require "application_system_test_case"

class AgentesTest < ApplicationSystemTestCase
  setup do
    @agente = agentes(:one)
  end

  test "visiting the index" do
    visit agentes_url
    assert_selector "h1", text: "Agentes"
  end

  test "creating a Agente" do
    visit agentes_url
    click_on "New Agente"

    fill_in "Cidade", with: @agente.cidade
    fill_in "Cpfcnpj", with: @agente.cpfcnpj
    fill_in "Email", with: @agente.email
    fill_in "Endereco", with: @agente.endereco
    fill_in "Fone", with: @agente.fone
    fill_in "Nome", with: @agente.nome
    fill_in "Tipo", with: @agente.tipo
    fill_in "Uf", with: @agente.uf
    click_on "Create Agente"

    assert_text "Agente was successfully created"
    click_on "Back"
  end

  test "updating a Agente" do
    visit agentes_url
    click_on "Edit", match: :first

    fill_in "Cidade", with: @agente.cidade
    fill_in "Cpfcnpj", with: @agente.cpfcnpj
    fill_in "Email", with: @agente.email
    fill_in "Endereco", with: @agente.endereco
    fill_in "Fone", with: @agente.fone
    fill_in "Nome", with: @agente.nome
    fill_in "Tipo", with: @agente.tipo
    fill_in "Uf", with: @agente.uf
    click_on "Update Agente"

    assert_text "Agente was successfully updated"
    click_on "Back"
  end

  test "destroying a Agente" do
    visit agentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agente was successfully destroyed"
  end
end
