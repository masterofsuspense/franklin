class CreateRetailerCategories < ActiveRecord::Migration
  def self.up
    create_table :retailer_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :retailer_categories
  end
end
