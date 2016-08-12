class CreateOrderers < ActiveRecord::Migration
  def change
    create_table :orderers do |t|

      t.timestamps
    end
  end
end
