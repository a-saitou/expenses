class OrdererController < ApplicationController
  def index
  end

  def order_data
    orders = Order.all
    
    render :json => {
      :total_count => orders.length,
      :pos => 0,
      :rows => orders.map do |order|
        {
          :id => order.id,
          :data => [order.name]
        }
      end
    }
  end

  def order_db_action
    @mode = params["!nativeeditor_status"]
    name = params["c0"]

    
    @id = params["gr_id"]
    
    case @mode
    when "inserted"
      order = order.create :name => name
      @tid = order.id
      
    when "deleted"
      order.find(@id).destroy
      @tid = @id 
      
    when "updated"
      order = Order.find(@id)
      order.name = name

	order.save
      @tid = @id
    end
  end
end
