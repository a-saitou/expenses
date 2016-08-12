class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.intger         :calendar
      t.referenses	   :staff
      t.referenses     :agreement
      t.time         :start_time
      t.time         :end_time
      
      t.timestamps
    end
    add_foreign_key :works, :staff
    add_foreign_key :works, :agreement
  end
end
