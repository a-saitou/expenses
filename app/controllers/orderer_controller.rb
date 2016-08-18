class OrdererController < ApplicationController
  def index
  end

  def data
    orderers = Orderer.all
    
    render :json => {
      :total_count => orderers.length,
      :pos => 0,
      :rows => orderers.map do |orderer|
        {
          :id => orderer.id,
          :data => [orderer.name,orderer.yomi]
        }
      end
    }
  end

  def db_action
    @mode = params["!nativeeditor_status"]
    name = params["c0"]

    
    @id = params["gr_id"]
    
    case @mode
    when "inserted"
      orderer = orderer.create :name => name,:yomi => yomi
      @tid = orderer.id
      
    when "deleted"
      orderer.find(@id).destroy
      @tid = @id 
      
    when "updated"
      orderer = Order.find(@id)
      orderer.name = name
      orderer.yomi = yomi
	orderer.save
      @tid = @id
    end
  end
end
