class CreatePhcdevworksCoreModulesMarketingAffiliate < ActiveRecord::Migration[6.1]
  def change
    create_table :phcdevworks_core_modules_marketing_affiliate_s do |t|

      t.string :marketing_affiliate_name
      t.string :marketing_affiliate_original_url
      t.string :marketing_affiliate_link_button_name
      t.string :marketing_affiliate_url

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
