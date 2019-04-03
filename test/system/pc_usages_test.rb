require "application_system_test_case"

class PcUsagesTest < ApplicationSystemTestCase
  setup do
    @pc_usage = pc_usages(:one)
  end

  test "visiting the index" do
    visit pc_usages_url
    assert_selector "h1", text: "Pc Usages"
  end

  test "creating a Pc usage" do
    visit pc_usages_url
    click_on "New Pc Usage"

    fill_in "End at", with: @pc_usage.end_at
    fill_in "Pc", with: @pc_usage.pc_id
    fill_in "Start at", with: @pc_usage.start_at
    fill_in "Student", with: @pc_usage.student_id
    click_on "Create Pc usage"

    assert_text "Pc usage was successfully created"
    click_on "Back"
  end

  test "updating a Pc usage" do
    visit pc_usages_url
    click_on "Edit", match: :first

    fill_in "End at", with: @pc_usage.end_at
    fill_in "Pc", with: @pc_usage.pc_id
    fill_in "Start at", with: @pc_usage.start_at
    fill_in "Student", with: @pc_usage.student_id
    click_on "Update Pc usage"

    assert_text "Pc usage was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc usage" do
    visit pc_usages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc usage was successfully destroyed"
  end
end
