class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.belongs_to :type

      t.timestamps
    end
  end
end
