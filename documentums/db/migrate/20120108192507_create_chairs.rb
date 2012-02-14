class CreateChairs < ActiveRecord::Migration
  def change
    create_table :chairs do |t|
      t.references :document
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
