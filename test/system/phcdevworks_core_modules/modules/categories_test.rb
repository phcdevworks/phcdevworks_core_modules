require "application_system_test_case"

module PhcdevworksCoreModules
  class Modules::CategoriesTest < ApplicationSystemTestCase
    setup do
      @modules_category = phcdevworks_core_modules_modules_categories(:one)
    end

    test "visiting the index" do
      visit modules_categories_url
      assert_selector "h1", text: "Modules/Categories"
    end

    test "creating a Category" do
      visit modules_categories_url
      click_on "New Modules/Category"

      fill_in "Category name", with: @modules_category.category_name
      click_on "Create Category"

      assert_text "Category was successfully created"
      click_on "Back"
    end

    test "updating a Category" do
      visit modules_categories_url
      click_on "Edit", match: :first

      fill_in "Category name", with: @modules_category.category_name
      click_on "Update Category"

      assert_text "Category was successfully updated"
      click_on "Back"
    end

    test "destroying a Category" do
      visit modules_categories_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Category was successfully destroyed"
    end
  end
end
