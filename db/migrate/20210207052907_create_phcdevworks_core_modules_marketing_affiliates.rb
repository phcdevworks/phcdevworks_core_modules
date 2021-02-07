class CreatePhcdevworksCoreModulesMarketingAffiliates < ActiveRecord::Migration[6.1]
  def change
    create_table :phcdevworks_core_modules_marketing_affiliates do |t|

      t.string :marketing_affiliate_name
      t.string :marketing_affiliate_button_name
      t.string :marketing_affiliate_url
      t.string :marketing_affiliate_original_url

      t.timestamps

    end
  end
end
