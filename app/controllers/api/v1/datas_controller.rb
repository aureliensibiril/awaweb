class Api::V1::DatasController < ApplicationController

  def index
    
    
      @bottle = Bottle.find_by_serial(params[:id])
      
    range = "created_at #{(1.day.ago.utc...Time.now.utc).to_s(:db)} AND bottle_id = #{@bottle.id}"
    @today = Refill.all(:conditions => range)
    @alltime = Refill.all(:conditions => "bottle_id = #{@bottle.id}")
    
   
    
    @return = ["today" => @today.length,
                "alltime" => @alltime.length]
    render :json => @return
  end
  
end
