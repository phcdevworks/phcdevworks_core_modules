require 'test_helper'

module PhcdevworksCoreModules
  class Modules::CategoriesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @modules_category = phcdevworks_core_modules_modules_categories(:one)
    end

    test "should get index" do
      get modules_categories_url
      assert_response :success
    end

    test "should get new" do
      get new_modules_category_url
      assert_response :success
    end

    test "should create modules_category" do
      assert_difference('Modules::Category.count') do
        post modules_categories_url, params: { modules_category: { category_name: @modules_category.category_name } }
      end

      assert_redirected_to modules_category_url(Modules::Category.last)
    end

    test "should show modules_category" do
      get modules_category_url(@modules_category)
      assert_response :success
    end

    test "should get edit" do
      get edit_modules_category_url(@modules_category)
      assert_response :success
    end

    test "should update modules_category" do
      patch modules_category_url(@modules_category), params: { modules_category: { category_name: @modules_category.category_name } }
      assert_redirected_to modules_category_url(@modules_category)
    end

    test "should destroy modules_category" do
      assert_difference('Modules::Category.count', -1) do
        delete modules_category_url(@modules_category)
      end

      assert_redirected_to modules_categories_url
    end
  end
end
