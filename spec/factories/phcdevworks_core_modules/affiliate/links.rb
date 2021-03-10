FactoryBot.define do
  factory :affiliate_link, class: 'Affiliate::Link' do

    affiliate_link_name { "Linke Name" }
    affiliate_link_button_text { "Click Here" }
    affiliate_link_url { "https://google.ca/" }
    affiliate_link_original_url { "https://google.ca/" }

  end
end
