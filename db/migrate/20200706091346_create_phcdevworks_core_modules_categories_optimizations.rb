class CreatePhcdevworksCoreModulesCategoriesOptimizations < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_core_modules_categories_optimizations do |t|

      t.integer :category_id
      t.integer :optimization_id

    end
  end
end
