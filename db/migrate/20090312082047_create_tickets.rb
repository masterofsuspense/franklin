class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :question
      t.text :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
