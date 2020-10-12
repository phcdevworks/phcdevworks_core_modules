class RemovePhcdevworksCoreModulesPostCategories < ActiveRecord::Migration[6.0]
    def change

        remove_column :phcdevworks_core_modules_post_categories, :optimization_id, :string

    end
end
