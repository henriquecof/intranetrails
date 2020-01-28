require "application_system_test_case"

class ContacorrentesTest < ApplicationSystemTestCase
  setup do
    @contacorrente = contacorrentes(:one)
  end

  test "visiting the index" do
    visit contacorrentes_url
    assert_selector "h1", text: "Contacorrentes"
  end

  test "creating a Contacorrente" do
    visit contacorrentes_url
    click_on "New Contacorrente"

    fill_in "Agencia", with: @contacorrente.agencia
    fill_in "Agente", with: @contacorrente.agente
    fill_in "Banco", with: @contacorrente.banco
    fill_in "Descricao", with: @contacorrente.descricao
    fill_in "Tipo", with: @contacorrente.tipo
    click_on "Create Contacorrente"

    assert_text "Contacorrente was successfully created"
    click_on "Back"
  end

  test "updating a Contacorrente" do
    visit contacorrentes_url
    click_on "Edit", match: :first

    fill_in "Agencia", with: @contacorrente.agencia
    fill_in "Agente", with: @contacorrente.agente
    fill_in "Banco", with: @contacorrente.banco
    fill_in "Descricao", with: @contacorrente.descricao
    fill_in "Tipo", with: @contacorrente.tipo
    click_on "Update Contacorrente"

    assert_text "Contacorrente was successfully updated"
    click_on "Back"
  end

  test "destroying a Contacorrente" do
    visit contacorrentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contacorrente was successfully destroyed"
  end
end
