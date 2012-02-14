class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.references :document
      t.string :name

      t.timestamps
    end
    add_index :types, :document_id
  end
end
