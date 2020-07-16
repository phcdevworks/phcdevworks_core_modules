module PhcdevworksCoreModules
  class Post::Category < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => "PhcdevworksCoreModules::PostCategoryVersions"

    # Relationships for Local
    belongs_to :user, class_name: "PhcdevworksAccounts::User"
    belongs_to :optimization, class_name: "PhcdevworksCoreModules::Marketing::Optimization", optional: true

    # Relationships for PHCDevworks Plugins
    if defined?phcdevworks_press
      has_and_belongs_to_many :posts, class_name: "PhcdevworksPress::Article::Post", :join_table => "phcdevworks_press_article_categories_posts", :dependent => :destroy
      has_and_belongs_to_many :posts, class_name: "PhcdevworksPress::Review::Post", :join_table => "phcdevworks_press_review_categories_posts", :dependent => :destroy
      has_and_belongs_to_many :posts, class_name: "PhcdevworksPress::List::Post", :join_table => "phcdevworks_press_list_categories_posts", :dependent => :destroy
    end

    if defined?phcdevworks_portfolio
      has_and_belongs_to_many :posts, class_name: "PhcdevworksPortfolio::Project::Post", :join_table => "phcdevworks_portfolio_project_categories_posts", :dependent => :destroy
    end

    if defined?phcdevworks_tutorials
      has_and_belongs_to_many :posts, class_name: "PhcdevworksTutorials::Tutorial::Post", :join_table => "phcdevworks_tutorials_categories_posts", :dependent => :destroy
      has_and_belongs_to_many :posts, class_name: "PhcdevworksTutorials::Command::Post", :join_table => "phcdevworks_tutorials_categories_commands", :dependent => :destroy
    end

    # Form Fields Validation
    validates :post_category_name,
    presence: true,
    uniqueness: true

    # Clean URL Define
    friendly_id :post_category_nice_urls, use: [:slugged, :finders]

    def post_category_nice_urls
      [:post_category_name]
    end

  end
end
