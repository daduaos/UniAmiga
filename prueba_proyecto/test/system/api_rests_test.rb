require "application_system_test_case"

class ApiRestsTest < ApplicationSystemTestCase
  setup do
    @api_rest = api_rests(:one)
  end

  test "visiting the index" do
    visit api_rests_url
    assert_selector "h1", text: "Api Rests"
  end

  test "creating a Api rest" do
    visit api_rests_url
    click_on "New Api Rest"

    fill_in "Body", with: @api_rest.body
    fill_in "Count", with: @api_rest.count
    fill_in "Title", with: @api_rest.title
    click_on "Create Api rest"

    assert_text "Api rest was successfully created"
    click_on "Back"
  end

  test "updating a Api rest" do
    visit api_rests_url
    click_on "Edit", match: :first

    fill_in "Body", with: @api_rest.body
    fill_in "Count", with: @api_rest.count
    fill_in "Title", with: @api_rest.title
    click_on "Update Api rest"

    assert_text "Api rest was successfully updated"
    click_on "Back"
  end

  test "destroying a Api rest" do
    visit api_rests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Api rest was successfully destroyed"
  end
end
