require "application_system_test_case"

class BalancesTest < ApplicationSystemTestCase
    test "visit index" do
        sign_in users(:regular)
        visit balances_url
        assert_selector "h2", text: "Crypto purchases"
    end
    
    test "Create balance" do
        sign_in users(:regular)
        visit balances_url
        click_on "Add purchase"
    
        fill_in "Balance", with: @balance.balance
        click_on "Create balance"
    
        assert_text "Balance was successfully created"
        click_on "Back"
    end
    
end
