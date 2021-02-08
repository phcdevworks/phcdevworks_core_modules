FactoryBot.define do
  factory :affiliate_link, class: 'Affiliate::Link' do
    affiliate_link_name { "MyString" }
    affiliate_link_button_text { "MyString" }
    affiliate_link_url { "MyString" }
    affiliate_link_original_url { "MyString" }
  end
end
