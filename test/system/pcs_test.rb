require "application_system_test_case"

class PcsTest < ApplicationSystemTestCase
  setup do
    @pc = pcs(:one)
  end

  test "visiting the index" do
    visit pcs_url
    assert_selector "h1", text: "Pcs"
  end

  test "creating a Pc" do
    visit pcs_url
    click_on "New Pc"

    fill_in "Complain", with: @pc.complain
    fill_in "Number", with: @pc.number
    fill_in "Position in row", with: @pc.position_in_row
    fill_in "Programs", with: @pc.programs
    fill_in "Row", with: @pc.row
    fill_in "Status", with: @pc.status
    click_on "Create Pc"

    assert_text "Pc was successfully created"
    click_on "Back"
  end

  test "updating a Pc" do
    visit pcs_url
    click_on "Edit", match: :first

    fill_in "Complain", with: @pc.complain
    fill_in "Number", with: @pc.number
    fill_in "Position in row", with: @pc.position_in_row
    fill_in "Programs", with: @pc.programs
    fill_in "Row", with: @pc.row
    fill_in "Status", with: @pc.status
    click_on "Update Pc"

    assert_text "Pc was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc" do
    visit pcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc was successfully destroyed"
  end
end
