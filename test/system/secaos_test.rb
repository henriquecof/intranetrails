require "application_system_test_case"

class SecaosTest < ApplicationSystemTestCase
  setup do
    @secao = secaos(:one)
  end

  test "visiting the index" do
    visit secaos_url
    assert_selector "h1", text: "Secaos"
  end

  test "creating a Secao" do
    visit secaos_url
    click_on "New Secao"

    fill_in "Descricao", with: @secao.descricao
    fill_in "Id", with: @secao.id
    click_on "Create Secao"

    assert_text "Secao was successfully created"
    click_on "Back"
  end

  test "updating a Secao" do
    visit secaos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @secao.descricao
    fill_in "Id", with: @secao.id
    click_on "Update Secao"

    assert_text "Secao was successfully updated"
    click_on "Back"
  end

  test "destroying a Secao" do
    visit secaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secao was successfully destroyed"
  end
end
