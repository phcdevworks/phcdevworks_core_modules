module PhcdevworksCoreModules
  class Modules::Category < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => "PhcdevworksCoreModules::CoreCategoryVersions"

    # Relationships
    belongs_to :user, class_name: "PhcdevworksAccounts::User"
    has_and_belongs_to_many :posts, class_name: "PhcdevworksPress::Article::Post", :join_table => "phcdevworks_press_categories_posts", :dependent => :destroy
    has_and_belongs_to_many :posts, class_name: "PhcdevworksPortfolio::Project::Post", :join_table => "phcdevworks_portfolio_categories_posts", :dependent => :destroy
    has_and_belongs_to_many :posts, class_name: "PhcdevworksTutorials::Tutorial::Post", :join_table => "phcdevworks_tutorials_categories_posts", :dependent => :destroy
    has_and_belongs_to_many :posts, class_name: "PhcdevworksTutorials::Command::Post", :join_table => "phcdevworks_tutorials_categories_commands", :dependent => :destroy

    # Form Fields Validation
    validates :category_name,
    presence: true,
    uniqueness: true

    # Clean URL Define
    friendly_id :phcdev_core_category_nice_urls, use: [:slugged, :finders]

    def phcdev_core_category_nice_urls
      [:category_name]
    end

  end
end
