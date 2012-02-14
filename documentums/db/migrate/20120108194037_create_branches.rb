class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.references :document
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
