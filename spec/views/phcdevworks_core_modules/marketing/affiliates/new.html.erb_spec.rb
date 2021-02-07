require 'rails_helper'

RSpec.describe "marketing/affiliates/new", type: :view do
  before(:each) do
    assign(:marketing_affiliate, Marketing::Affiliate.new(
      marketing_affiliate_name: "MyString",
      marketing_affiliate_button_name: "MyString",
      marketing_affiliate_url: "MyString",
      marketing_affiliate_original_url: "MyString"
    ))
  end

  it "renders new marketing_affiliate form" do
    render

    assert_select "form[action=?][method=?]", marketing_affiliates_path, "post" do

      assert_select "input[name=?]", "marketing_affiliate[marketing_affiliate_name]"

      assert_select "input[name=?]", "marketing_affiliate[marketing_affiliate_button_name]"

      assert_select "input[name=?]", "marketing_affiliate[marketing_affiliate_url]"

      assert_select "input[name=?]", "marketing_affiliate[marketing_affiliate_original_url]"
    end
  end
end
