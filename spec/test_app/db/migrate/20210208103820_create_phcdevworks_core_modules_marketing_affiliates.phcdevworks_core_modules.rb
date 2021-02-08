# This migration comes from phcdevworks_core_modules (originally 20210207052907)
class CreatePhcdevworksCoreModulesMarketingAffiliates < ActiveRecord::Migration[6.1]
  def change
    create_table :phcdevworks_core_modules_marketing_affiliates do |t|

      t.string :marketing_affiliate_name
      t.string :marketing_affiliate_button_text
      t.string :marketing_affiliate_link
      t.string :marketing_affiliate_original_link

      t.timestamps

    end
  end
end
