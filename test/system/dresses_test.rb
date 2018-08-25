require "application_system_test_case"

class DressesTest < ApplicationSystemTestCase
  setup do
    @dress = dresses(:one)
  end

  test "visiting the index" do
    visit dresses_url
    assert_selector "h1", text: "Dresses"
  end

  test "creating a Dress" do
    visit dresses_url
    click_on "New Dress"

    fill_in "Code", with: @dress.code
    fill_in "Colors", with: @dress.colors
    fill_in "Ms Bust", with: @dress.ms_bust
    fill_in "Ms Hip", with: @dress.ms_hip
    fill_in "Ms Length", with: @dress.ms_length
    fill_in "Ms Waist", with: @dress.ms_waist
    fill_in "Name", with: @dress.name
    fill_in "Price", with: @dress.price
    fill_in "Remarks", with: @dress.remarks
    fill_in "Stock", with: @dress.stock
    click_on "Create Dress"

    assert_text "Dress was successfully created"
    click_on "Back"
  end

  test "updating a Dress" do
    visit dresses_url
    click_on "Edit", match: :first

    fill_in "Code", with: @dress.code
    fill_in "Colors", with: @dress.colors
    fill_in "Ms Bust", with: @dress.ms_bust
    fill_in "Ms Hip", with: @dress.ms_hip
    fill_in "Ms Length", with: @dress.ms_length
    fill_in "Ms Waist", with: @dress.ms_waist
    fill_in "Name", with: @dress.name
    fill_in "Price", with: @dress.price
    fill_in "Remarks", with: @dress.remarks
    fill_in "Stock", with: @dress.stock
    click_on "Update Dress"

    assert_text "Dress was successfully updated"
    click_on "Back"
  end

  test "destroying a Dress" do
    visit dresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dress was successfully destroyed"
  end
end
