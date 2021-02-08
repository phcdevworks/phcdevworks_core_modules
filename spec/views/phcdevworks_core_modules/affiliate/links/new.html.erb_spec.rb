require 'rails_helper'

RSpec.describe "affiliate/links/new", type: :view do
  before(:each) do
    assign(:affiliate_link, Affiliate::Link.new(
      affiliate_link_name: "MyString",
      affiliate_link_button_text: "MyString",
      affiliate_link_url: "MyString",
      affiliate_link_original_url: "MyString"
    ))
  end

  it "renders new affiliate_link form" do
    render

    assert_select "form[action=?][method=?]", affiliate_links_path, "post" do

      assert_select "input[name=?]", "affiliate_link[affiliate_link_name]"

      assert_select "input[name=?]", "affiliate_link[affiliate_link_button_text]"

      assert_select "input[name=?]", "affiliate_link[affiliate_link_url]"

      assert_select "input[name=?]", "affiliate_link[affiliate_link_original_url]"
    end
  end
end
