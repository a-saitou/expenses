class CreateOrderers < ActiveRecord::Migration
  def change
    create_table :orderers do |t|
      t.string       :name
      
      t.timestamps
    end
  end
end
