require 'rails_helper'

module PhcdevworksCoreModules
  RSpec.describe Affiliate::Link, type: :model do

    it "is valid with a first affiliate_link_name, affiliate_link_button_text and affiliate_link_url" do
      affiliate_links = Affiliate::Link.new(
        affiliate_link_name: "Link Name",
        affiliate_link_button_text: "Click Here",
        affiliate_link_url: "https://google.ca/",
        affiliate_link_original_url: "https://google.ca/",
      )
      expect(affiliate_links).to be_valid
    end

    it "is valid with valid affiliate_link_name affiliate_link_url"
    it "is not valid without a affiliate_link_name"
    it "is not valid without a affiliate_link_url"
    it "is not valid without a start_date"
    it "is not valid without a end_date"

  end
end
