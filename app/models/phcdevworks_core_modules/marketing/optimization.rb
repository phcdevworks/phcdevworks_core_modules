module PhcdevworksCoreModules
  class Marketing::Optimization < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Image Upload
    has_one_attached :seo_twitter_image
    has_one_attached :seo_open_graph_image

    # Paper Trail Initialize
    has_paper_trail :class_name => "PhcdevworksCoreModules::CoreOptimizationVersions"

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
    end
    if defined?phcdevworks_portfolio
      has_many :posts, class_name: "PhcdevworksPortfolio::Project::Post"
    end
    if defined?phcdevworks_tutorials
      has_many :posts, class_name: "PhcdevworksTutorials::Tutorial::Post"
      has_many :posts, class_name: "PhcdevworksTutorials::Command::Post"
    end

    # Form Fields Validation
    validates :seo_title,
      presence: true

    validates :seo_open_graph_title,
      presence: true

    validates :seo_twitter_title,
      presence: true

    # Clean URL Define
    friendly_id :phcdev_core_optimization_nice_urls, use: [:slugged, :finders]

    def phcdev_core_optimization_nice_urls
      [:seo_title].join("-")
    end

  end
end
