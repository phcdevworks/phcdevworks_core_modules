module PhcdevworksCoreModules
  class Marketing::Optimization < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Image Upload
    has_one_attached :seo_twitter_image
    has_one_attached :seo_open_graph_image

    # Paper Trail Initialize
    has_paper_trail :class_name => "PhcdevworksCoreModules::CoreOptimizationVersions"

    # Relationships
    belongs_to :user, class_name: "PhcdevworksAccounts::User"
    has_and_belongs_to_many :posts, class_name: "PhcdevworksPress::Article::Post", :join_table => "phcdevworks_press_categories_posts", :dependent => :destroy
    has_and_belongs_to_many :posts, class_name: "PhcdevworksPortfolio::Project::Post", :join_table => "phcdevworks_portfolio_categories_posts", :dependent => :destroy
    has_and_belongs_to_many :posts, class_name: "PhcdevworksTutorials::Tutorial::Post", :join_table => "phcdevworks_tutorials_categories_posts", :dependent => :destroy
    has_and_belongs_to_many :posts, class_name: "PhcdevworksTutorials::Command::Post", :join_table => "phcdevworks_tutorials_categories_commands", :dependent => :destroy

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
