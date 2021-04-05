require "application_system_test_case"

class CryptosTest < ApplicationSystemTestCase
  test "visit index" do
    sign_in users(:regular)
    visit cryptos_url
    assert_selector "h1", text: "Portfolio information"
  end
end
