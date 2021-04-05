require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  test "visit index" do
    sign_in users(:regular)
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "Create Profile" do
    sign_in users(:regular)
    visit root_url
    click_on "Create Profile"

    fill_in "First name", with: @profile.first_name
    fill_in "Last name", with: @profile.last_name
    fill_in "Country", with: @profile.country
    fill_in "Phone", with: @profile.number
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "update Profile" do
    sign_in users(:regular)
    visit profile_url(@profile)
    click_on "Edit", match: :first

    fill_in "First name", with: @profile.first_name
    fill_in "Last name", with: @profile.last_name
    fill_in "Country", with: @profile.country
    fill_in "Phone", with: @profile.number
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
  end

  test "delete Profile" do
    sign_in users(:regular)
    visit profile_url(@profile)
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
