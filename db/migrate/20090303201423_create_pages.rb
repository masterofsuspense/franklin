class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :navlabel
      t.integer :position
      t.string :status
      t.integer :user_id
      t.integer :parent_id
      t.boolean :redirect
      t.string :redirect_action_name
      t.string :redirect_controller_name

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
