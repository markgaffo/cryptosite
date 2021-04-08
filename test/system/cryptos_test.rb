require "application_system_test_case"

class CryptosTest < ApplicationSystemTestCase
  test "visit index" do
    sign_in users(:regular)
    visit cryptos_url
    assert_selector "h1", text: "Portfolio information"
  end
  
  test "Create Crypto" do
    sign_in users(:regular)
    visit cryptos_url
    click_on "Create Crypto"

    fill_in "Symbol of coin", with: @crypto.symbol
    fill_in "Amount owned", with: @crypto.amount_owned
    fill_in "Price bought at in dollars", with: @crypto.cost_per
    click_on "Create Crypto"

    assert_text "Crypto was successfully created"
    click_on "Back"
  end
  
    
  test "Update Crypto" do
    sign_in users(:regular)
    visit crypto_url(@crypto)
    click_on "Edit", match: :first

    fill_in "Symbol of coin", with: @crypto.symbol
    fill_in "Amount owned", with: @crypto.amount_owned
    fill_in "Price bought at in dollars", with: @crypto.cost_per
    click_on "Update Crypto"

    assert_text "Crypto was successfully updated"
  end
  
  test "Delete Crypto" do
    sign_in users(:regular)
    visit crypto_url(@crypto)
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crypto was successfully destroyed"
  end
  
end
