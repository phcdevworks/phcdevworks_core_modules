require "application_system_test_case"

module PhcdevworksCoreModules
  class Marketing::OptimizationsTest < ApplicationSystemTestCase
    setup do
      @marketing_optimization = phcdevworks_core_modules_marketing_optimizations(:one)
    end

    test "visiting the index" do
      visit marketing_optimizations_url
      assert_selector "h1", text: "Marketing/Optimizations"
    end

    test "creating a Optimization" do
      visit marketing_optimizations_url
      click_on "New Marketing/Optimization"

      fill_in "Seo description", with: @marketing_optimization.seo_description
      fill_in "Seo open graph description", with: @marketing_optimization.seo_open_graph_description
      fill_in "Seo open graph title", with: @marketing_optimization.seo_open_graph_title
      fill_in "Seo open graph type", with: @marketing_optimization.seo_open_graph_type
      fill_in "Seo open graph url", with: @marketing_optimization.seo_open_graph_url
      fill_in "Seo title", with: @marketing_optimization.seo_title
      fill_in "Seo twitter description", with: @marketing_optimization.seo_twitter_description
      fill_in "Seo twitter title", with: @marketing_optimization.seo_twitter_title
      fill_in "Seo twitter url", with: @marketing_optimization.seo_twitter_url
      click_on "Create Optimization"

      assert_text "Optimization was successfully created"
      click_on "Back"
    end

    test "updating a Optimization" do
      visit marketing_optimizations_url
      click_on "Edit", match: :first

      fill_in "Seo description", with: @marketing_optimization.seo_description
      fill_in "Seo open graph description", with: @marketing_optimization.seo_open_graph_description
      fill_in "Seo open graph title", with: @marketing_optimization.seo_open_graph_title
      fill_in "Seo open graph type", with: @marketing_optimization.seo_open_graph_type
      fill_in "Seo open graph url", with: @marketing_optimization.seo_open_graph_url
      fill_in "Seo title", with: @marketing_optimization.seo_title
      fill_in "Seo twitter description", with: @marketing_optimization.seo_twitter_description
      fill_in "Seo twitter title", with: @marketing_optimization.seo_twitter_title
      fill_in "Seo twitter url", with: @marketing_optimization.seo_twitter_url
      click_on "Update Optimization"

      assert_text "Optimization was successfully updated"
      click_on "Back"
    end

    test "destroying a Optimization" do
      visit marketing_optimizations_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Optimization was successfully destroyed"
    end
  end
end
