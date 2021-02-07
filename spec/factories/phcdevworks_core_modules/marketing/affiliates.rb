FactoryBot.define do
  factory :marketing_affiliate, class: 'Marketing::Affiliate' do
    marketing_affiliate_name { "MyString" }
    marketing_affiliate_button_name { "MyString" }
    marketing_affiliate_url { "MyString" }
    marketing_affiliate_original_url { "MyString" }
  end
end
