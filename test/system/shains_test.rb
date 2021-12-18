require "application_system_test_case"

class ShainsTest < ApplicationSystemTestCase
  setup do
    @shain = shains(:one)
  end

  test "visiting the index" do
    visit shains_url
    assert_selector "h1", text: "Shains"
  end

  test "creating a Shain" do
    visit shains_url
    click_on "New Shain"

    fill_in "Kihonkyu", with: @shain.kihonkyu
    fill_in "Name", with: @shain.name
    fill_in "Yakushoku", with: @shain.yakushoku
    click_on "Create Shain"

    assert_text "Shain was successfully created"
    click_on "Back"
  end

  test "updating a Shain" do
    visit shains_url
    click_on "Edit", match: :first

    fill_in "Kihonkyu", with: @shain.kihonkyu
    fill_in "Name", with: @shain.name
    fill_in "Yakushoku", with: @shain.yakushoku
    click_on "Update Shain"

    assert_text "Shain was successfully updated"
    click_on "Back"
  end

  test "destroying a Shain" do
    visit shains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shain was successfully destroyed"
  end
end
