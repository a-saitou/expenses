class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer         :calendar
      t.integer	     :staff_id
      t.integer     :agreement_id
      t.time         :start_time
      t.time         :end_time
      
      t.timestamps
    end
    add_foreign_key :works, :staff
    add_foreign_key :works, :agreement
  end
end
