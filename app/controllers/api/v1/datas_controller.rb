class Api::V1::DatasController < ApplicationController

  def index
    range = "created_at #{(1.day.ago.utc...Time.now.utc).to_s(:db)} AND bottle_id = #{params[:id]}"
    @today = Refill.all(:conditions => range)
    @alltime = Refill.all(:bottle_id => params[:id])
    
    @return = ["today" => @today.length,
                "alltime" => @alltime.length]
    render :json => @return
  end
  
end
