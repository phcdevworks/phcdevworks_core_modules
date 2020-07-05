require 'test_helper'

module PhcdevworksCoreModules
  class Marketing::OptimizationsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @marketing_optimization = phcdevworks_core_modules_marketing_optimizations(:one)
    end

    test "should get index" do
      get marketing_optimizations_url
      assert_response :success
    end

    test "should get new" do
      get new_marketing_optimization_url
      assert_response :success
    end

    test "should create marketing_optimization" do
      assert_difference('Marketing::Optimization.count') do
        post marketing_optimizations_url, params: { marketing_optimization: { seo_description: @marketing_optimization.seo_description, seo_open_graph_description: @marketing_optimization.seo_open_graph_description, seo_open_graph_title: @marketing_optimization.seo_open_graph_title, seo_open_graph_type: @marketing_optimization.seo_open_graph_type, seo_open_graph_url: @marketing_optimization.seo_open_graph_url, seo_title: @marketing_optimization.seo_title, seo_twitter_description: @marketing_optimization.seo_twitter_description, seo_twitter_title: @marketing_optimization.seo_twitter_title, seo_twitter_url: @marketing_optimization.seo_twitter_url } }
      end

      assert_redirected_to marketing_optimization_url(Marketing::Optimization.last)
    end

    test "should show marketing_optimization" do
      get marketing_optimization_url(@marketing_optimization)
      assert_response :success
    end

    test "should get edit" do
      get edit_marketing_optimization_url(@marketing_optimization)
      assert_response :success
    end

    test "should update marketing_optimization" do
      patch marketing_optimization_url(@marketing_optimization), params: { marketing_optimization: { seo_description: @marketing_optimization.seo_description, seo_open_graph_description: @marketing_optimization.seo_open_graph_description, seo_open_graph_title: @marketing_optimization.seo_open_graph_title, seo_open_graph_type: @marketing_optimization.seo_open_graph_type, seo_open_graph_url: @marketing_optimization.seo_open_graph_url, seo_title: @marketing_optimization.seo_title, seo_twitter_description: @marketing_optimization.seo_twitter_description, seo_twitter_title: @marketing_optimization.seo_twitter_title, seo_twitter_url: @marketing_optimization.seo_twitter_url } }
      assert_redirected_to marketing_optimization_url(@marketing_optimization)
    end

    test "should destroy marketing_optimization" do
      assert_difference('Marketing::Optimization.count', -1) do
        delete marketing_optimization_url(@marketing_optimization)
      end

      assert_redirected_to marketing_optimizations_url
    end
  end
end
