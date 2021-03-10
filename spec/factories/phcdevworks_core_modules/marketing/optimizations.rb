FactoryBot.define do
  factory :marketing_optimization, class: 'Marketing::Optimization' do

    marketing_optimization_page_title { "Page Title" }
    marketing_optimization_page_description { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique ante sapien. " }

    marketing_optimization_og_title { "OG Title" }
    marketing_optimization_og_description { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique ante sapien." }
    marketing_optimization_og_type { "Link Name" }
    marketing_optimization_og_url { "https://google.ca/" }

    marketing_optimization_twitter_title { "OG Title" }
    marketing_optimization_twitter_description { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique ante sapien." }
    marketing_optimization_twitter_type { "Link Name" }
    marketing_optimization_twitter_url { "https://google.ca/" }

  end
end
