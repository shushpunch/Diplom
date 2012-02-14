class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.text      :comment
      t.text      :body
      t.integer   :reason_id
      t.integer   :type_id
      t.integer   :branch_id
      t.integer   :chair_id
      t.string    :reas
      t.integer   :user_id
      t.integer   :aspirant_id
      t.integer   :dstate
      t.string    :number
      t.date      :cdate
      t.date      :sdate
      t.string    :user_name
      t.string    :user_surname
      t.string    :user_middlename

      t.timestamps
    end
  end
  
  def self.down
    drop_table :documents
  end
end
