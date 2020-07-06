require 'test_helper'

module PhcdevworksCoreModules
  class Post::CategoriesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @post_category = phcdevworks_core_modules_post_categories(:one)
    end

    test "should get index" do
      get post_categories_url
      assert_response :success
    end

    test "should get new" do
      get new_post_category_url
      assert_response :success
    end

    test "should create post_category" do
      assert_difference('Post::Category.count') do
        post post_categories_url, params: { post_category: { post_cat: @post_category.post_cat } }
      end

      assert_redirected_to post_category_url(Post::Category.last)
    end

    test "should show post_category" do
      get post_category_url(@post_category)
      assert_response :success
    end

    test "should get edit" do
      get edit_post_category_url(@post_category)
      assert_response :success
    end

    test "should update post_category" do
      patch post_category_url(@post_category), params: { post_category: { post_cat: @post_category.post_cat } }
      assert_redirected_to post_category_url(@post_category)
    end

    test "should destroy post_category" do
      assert_difference('Post::Category.count', -1) do
        delete post_category_url(@post_category)
      end

      assert_redirected_to post_categories_url
    end
  end
end
