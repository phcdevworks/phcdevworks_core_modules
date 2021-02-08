require 'rails_helper'

RSpec.describe "affiliate/links/edit", type: :view do
  before(:each) do
    @affiliate_link = assign(:affiliate_link, Affiliate::Link.create!(
      affiliate_link_name: "MyString",
      affiliate_link_button_text: "MyString",
      affiliate_link_url: "MyString",
      affiliate_link_original_url: "MyString"
    ))
  end

  it "renders the edit affiliate_link form" do
    render

    assert_select "form[action=?][method=?]", affiliate_link_path(@affiliate_link), "post" do

      assert_select "input[name=?]", "affiliate_link[affiliate_link_name]"

      assert_select "input[name=?]", "affiliate_link[affiliate_link_button_text]"

      assert_select "input[name=?]", "affiliate_link[affiliate_link_url]"

      assert_select "input[name=?]", "affiliate_link[affiliate_link_original_url]"
    end
  end
end
