class CalendarController < ApplicationController
  def index
  end

  def calendar_data
    calendars = Calendar.all
    
    render :json => {
      :total_count => calendars.length,
      :pos => 0,
      :rows => calendars.map do |calendar|
        {
          :id => calendar.id,
          :data => [calendar.date, calendar.year, calendar.month, calendar.day, calendar.holiday]
        }
      end
    }
  end

  def calendar_db_action
    @mode = params["!nativeeditor_status"]
    date = params["c0"]
    year = params['c1']
    month = params['c2']
    day = params['c3']
    holiday = params['c4']    
    @id = params["gr_id"]
    
    case @mode
    when "inserted"
      calendar = calendar.create :date => date, :year => year, :month => month, :day => day, :holiday => holiday
      @tid = calendar.id
      
    when "deleted"
      calendar.find(@id).destroy
      @tid = @id 
      
    when "updated"
      calendar = Calendar.find(@id)
      calendar.date = date
      calendar.year = year
      calendar.month = month
      calendar.day = day
      calendar.holiday = holiday
	calendar.save
      @tid = @id
    end
  end
end
