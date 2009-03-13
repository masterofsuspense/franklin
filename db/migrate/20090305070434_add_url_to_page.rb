class AddUrlToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :page_url, :string
  end

  def self.down
    remove_column :pages, :page_url
  end
end
