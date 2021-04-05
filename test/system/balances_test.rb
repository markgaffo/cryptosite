require "application_system_test_case"

class BalancesTest < ApplicationSystemTestCase
    test "visit index" do
        sign_in users(:regular)
        visit balances_url
        assert_selector "h2", text: "Crypto purchases"
    end
end
