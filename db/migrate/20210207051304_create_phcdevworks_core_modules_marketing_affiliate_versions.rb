class CreatePhcdevworksCoreModulesMarketingAffiliateVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :phcdevworks_core_modules_marketing_affiliate_versions do |t|

      t.string   :item_type, {:null=>false}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES
      t.datetime :created_at

    end

    add_index :phcdevworks_core_modules_marketing_affiliate_versions, %i(item_type item_id), :name => 'marketing_affiliate_versions'

  end
end
