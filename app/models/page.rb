class Page < ActiveRecord::Base
  belongs_to :user
  has_many :subpages, :class_name => 'Page', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Page', :foreign_key => 'parent_id'
  
  def self.find_main
    Page.find(:all, :conditions => ['parent_id IS NULL'], :order => 'position')
  end
  
  def self.find_main_public
    Page.find(:all, :conditions => ["parent_id IS NULL and status = ?", 'public'], :order => 'position')
  end
  
end
