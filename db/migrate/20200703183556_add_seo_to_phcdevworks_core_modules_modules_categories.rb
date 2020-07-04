class AddSeoToPhcdevworksCoreModulesModulesCategories < ActiveRecord::Migration[6.0]
  def change
  
    add_column :phcdevworks_core_modules_modules_categories, :seo_title, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_description , :string

    add_column :phcdevworks_core_modules_modules_categories, :seo_open_graph_type, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_open_graph_url, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_open_graph_title, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_open_graph_description, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_open_graph_image, :string

    add_column :phcdevworks_core_modules_modules_categories, :seo_twitter_type, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_twitter_url, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_twitter_title, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_twitter_description, :string
    add_column :phcdevworks_core_modules_modules_categories, :seo_twitter_image, :string
  
  end
end
