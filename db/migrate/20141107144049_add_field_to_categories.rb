class AddFieldToCategories < ActiveRecord::Migration
  def change
    create_table :categories_fields do |t|
      t.belongs_to :field
      t.belongs_to :category

      t.timestamps
    end
  end
end
