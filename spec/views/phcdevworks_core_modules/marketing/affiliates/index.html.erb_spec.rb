require 'rails_helper'

RSpec.describe "marketing/affiliates/index", type: :view do
  before(:each) do
    assign(:marketing_affiliates, [
      Marketing::Affiliate.create!(
        marketing_affiliate_name: "Marketing Affiliate Name",
        marketing_affiliate_button_name: "Marketing Affiliate Button Name",
        marketing_affiliate_url: "Marketing Affiliate Url",
        marketing_affiliate_original_url: "Marketing Affiliate Original Url"
      ),
      Marketing::Affiliate.create!(
        marketing_affiliate_name: "Marketing Affiliate Name",
        marketing_affiliate_button_name: "Marketing Affiliate Button Name",
        marketing_affiliate_url: "Marketing Affiliate Url",
        marketing_affiliate_original_url: "Marketing Affiliate Original Url"
      )
    ])
  end

  it "renders a list of marketing/affiliates" do
    render
    assert_select "tr>td", text: "Marketing Affiliate Name".to_s, count: 2
    assert_select "tr>td", text: "Marketing Affiliate Button Name".to_s, count: 2
    assert_select "tr>td", text: "Marketing Affiliate Url".to_s, count: 2
    assert_select "tr>td", text: "Marketing Affiliate Original Url".to_s, count: 2
  end
end
