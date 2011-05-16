class Api::V1::UsersController < ApplicationController

  def index
    @bottle = Bottle.find_by_serial(params[:id]) 
    @user = @bottle.user
    #@user.bottles = @bottle.All
    render :json => @user
  end
  
  def bottle

    #today's refill
    range = "created_at #{(1.day.ago.utc...Time.now.utc).to_s(:db)} AND bottle_id = #{params[:id]}"
    @today = Refill.all(:conditions => range)
    @alltime = Refill.all(:bottle_id => params[:id])
    
    @return = ["today" => @today.length,
                "alltime" => @alltime.length]
    render :json => @return
  end
  
  
end
