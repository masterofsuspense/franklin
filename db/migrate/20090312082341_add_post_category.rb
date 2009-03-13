class AddPostCategory < ActiveRecord::Migration
  def self.up
    add_column :posts, :post_category_id, :integer
  end

  def self.down
    remove_column :posts, :post_category_id
  end
end
