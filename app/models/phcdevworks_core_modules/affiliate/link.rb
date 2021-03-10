module PhcdevworksCoreModules
  class Affiliate::Link < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Validations
    validates :affiliate_link_name, presence: true
    validates :affiliate_link_button_text, presence: false
    validates :affiliate_link_url, presence: true
    validates :affiliate_link_original_url, presence: false



    # Paper Trail Initialize
    has_paper_trail versions: {class_name: "PhcdevworksCoreModules::AffiliateLinkVersions"}

    # Relationships for Local
    belongs_to :user, class_name: "PhcdevworksAccounts::User"

    if defined?phcdevworks_press
      has_many :posts, class_name: "PhcdevworksPress::Article::Post"
      has_many :posts, class_name: "PhcdevworksPress::Review::Post"
      has_many :posts, class_name: "PhcdevworksPress::List::Post"
    end

    # Clean URL Define
    friendly_id :affiliate_link_nice_urls, use: [:slugged, :finders]

    def affiliate_link_nice_urls
      [:affiliate_link_name]
    end

  end
end
