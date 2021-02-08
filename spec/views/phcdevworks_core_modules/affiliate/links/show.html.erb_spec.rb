require 'rails_helper'

RSpec.describe "affiliate/links/show", type: :view do
  before(:each) do
    @affiliate_link = assign(:affiliate_link, Affiliate::Link.create!(
      affiliate_link_name: "Affiliate Link Name",
      affiliate_link_button_text: "Affiliate Link Button Text",
      affiliate_link_url: "Affiliate Link Url",
      affiliate_link_original_url: "Affiliate Link Original Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Affiliate Link Name/)
    expect(rendered).to match(/Affiliate Link Button Text/)
    expect(rendered).to match(/Affiliate Link Url/)
    expect(rendered).to match(/Affiliate Link Original Url/)
  end
end
