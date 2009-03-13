class CreateRetailers < ActiveRecord::Migration
  def self.up
    create_table :retailers do |t|
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :province
      t.string :phone
      t.string :email
      t.string :website
      t.integer :retailer_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :retailers
  end
end
