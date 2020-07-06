require "application_system_test_case"

module PhcdevworksCoreModules
  class Post::CategoriesTest < ApplicationSystemTestCase
    setup do
      @post_category = phcdevworks_core_modules_post_categories(:one)
    end

    test "visiting the index" do
      visit post_categories_url
      assert_selector "h1", text: "Post/Categories"
    end

    test "creating a Category" do
      visit post_categories_url
      click_on "New Post/Category"

      fill_in "Post cat", with: @post_category.post_cat
      click_on "Create Category"

      assert_text "Category was successfully created"
      click_on "Back"
    end

    test "updating a Category" do
      visit post_categories_url
      click_on "Edit", match: :first

      fill_in "Post cat", with: @post_category.post_cat
      click_on "Update Category"

      assert_text "Category was successfully updated"
      click_on "Back"
    end

    test "destroying a Category" do
      visit post_categories_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Category was successfully destroyed"
    end
  end
end
