class AgreementController < ApplicationController
  def index
  end

  def agreement_data
    agreements = Agreement.all
    
    render :json => {
      :total_count => agreements.length,
      :pos => 0,
      :rows => agreements.map do |agreement|
        {
          :id => agreement.id,
          :data => [agreement.item_name, agreement.number, agreement.constraction_date, agreement.completion_date, agreement.orderer_id]
        }
      end
    }
  end

  def agreement_db_action
    @mode = params["!nativeeditor_status"]
    item_name = params["c0"]
    number = params['c1']
    constraction_date = params['c2']
    completion_date = params['c3']
    orderer_id = params['c4']   
    @id = params["gr_id"]
    
    case @mode
    when "inserted"
      agreement = agreement.create :item_name => item_name, :number => number, :constraction_date => constraction_date, :completion_date=> completion_date, :orderer_id => orderer_id
      @tid = agreement.id
      
    when "deleted"
      agreement.find(@id).destroy
      @tid = @id 
      
    when "updated"
      agreement = Agreement.find(@id)
      agreement.item_name = item_name
      agreement.number = number
      agreement.constraction_date = constraction_date
      agreement.completion_date = completion_date
      agreement.orderer_id = orderer_id    
	agreement.save
      @tid = @id
    end
  end
end
