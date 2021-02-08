require 'rails_helper'

RSpec.describe "affiliate/links/index", type: :view do
  before(:each) do
    assign(:affiliate_links, [
      Affiliate::Link.create!(
        affiliate_link_name: "Affiliate Link Name",
        affiliate_link_button_text: "Affiliate Link Button Text",
        affiliate_link_url: "Affiliate Link Url",
        affiliate_link_original_url: "Affiliate Link Original Url"
      ),
      Affiliate::Link.create!(
        affiliate_link_name: "Affiliate Link Name",
        affiliate_link_button_text: "Affiliate Link Button Text",
        affiliate_link_url: "Affiliate Link Url",
        affiliate_link_original_url: "Affiliate Link Original Url"
      )
    ])
  end

  it "renders a list of affiliate/links" do
    render
    assert_select "tr>td", text: "Affiliate Link Name".to_s, count: 2
    assert_select "tr>td", text: "Affiliate Link Button Text".to_s, count: 2
    assert_select "tr>td", text: "Affiliate Link Url".to_s, count: 2
    assert_select "tr>td", text: "Affiliate Link Original Url".to_s, count: 2
  end
end
