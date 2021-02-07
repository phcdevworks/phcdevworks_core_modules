require 'rails_helper'

RSpec.describe "marketing/affiliates/show", type: :view do
  before(:each) do
    @marketing_affiliate = assign(:marketing_affiliate, Marketing::Affiliate.create!(
      marketing_affiliate_name: "Marketing Affiliate Name",
      marketing_affiliate_button_name: "Marketing Affiliate Button Name",
      marketing_affiliate_url: "Marketing Affiliate Url",
      marketing_affiliate_original_url: "Marketing Affiliate Original Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Marketing Affiliate Name/)
    expect(rendered).to match(/Marketing Affiliate Button Name/)
    expect(rendered).to match(/Marketing Affiliate Url/)
    expect(rendered).to match(/Marketing Affiliate Original Url/)
  end
end
