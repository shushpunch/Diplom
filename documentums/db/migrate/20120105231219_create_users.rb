class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.string :name
      t.string :surname
      t.string :middlename
      t.string :email
      t.date :date_birth
      t.string :state
      t.integer :phone
      t.string :lform

      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end  
end
