module PhcdevworksCoreModules
  class Marketing::Optimization < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Image Upload
    has_one_attached :marketing_optimization_twitter_image
    has_one_attached :marketing_optimization_og_image

    # Paper Trail Initialize
    has_paper_trail versions: {class_name: "PhcdevworksCoreModules::MarketingOptimizationVersions"}

    # Relationships for Local
    belongs_to :user, class_name: "PhcdevworksAccounts::User"
    has_many :categories, class_name: "PhcdevworksCoreModules::Post::Category"

    # Relationships for PHCDevworks Plugins
    if defined?phcdevworks_members
      has_many :listings, class_name: "PhcdevworksMembers::Member::Listing"
    end

    if defined?phcdevworks_scripts
      has_many :listings, class_name: "PhcdevworksScripts::Script::Listing"
    end

    if defined?phcdevworks_press
      has_many :posts, class_name: "PhcdevworksPress::Article::Post"
      has_many :posts, class_name: "PhcdevworksPress::Review::Post"
      has_many :posts, class_name: "PhcdevworksPress::List::Post"
    end

    if defined?phcdevworks_portfolio
      has_many :posts, class_name: "PhcdevworksPortfolio::Project::Post"
    end

    if defined?phcdevworks_tutorials
      has_many :posts, class_name: "PhcdevworksTutorials::Tutorial::Post"
      has_many :posts, class_name: "PhcdevworksTutorials::Command::Post"
    end

    # Form Fields Validation
    validates :marketing_optimization_page_title,
      presence: true

    # Clean URL Define
    friendly_id :marketing_optimization_nice_urls, use: [:slugged, :finders]

    def marketing_optimization_nice_urls
      [:marketing_optimization_page_title]
    end

  end
end
