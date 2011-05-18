class DashboardController < ApplicationController

  before_filter :authenticate_user!
   
  def index
    
    @user = current_user
    @validate = FALSE
    if @user.bottles.count > 0
      @validate = TRUE
      @bottle = @user.bottles.first
      range = "created_at #{(1.day.ago.utc...Time.now.utc).to_s(:db)} AND bottle_id = #{@bottle.id}"
      @today = Refill.all(:conditions => range)
      @alltime = Refill.all(:conditions => "bottle_id = #{@bottle.id}")
      if @today.length > 0
        @daily = ((0.8 * @today.length) / 1.5 ) * 100  
      end
      
      if @alltime.length > 0
        @money = @alltime.length * 0.3
        @garbage = @alltime.length * 0.2 
      end
    end
    
  end

  def stats
  end
  
  def points
  end
  
  def group
  end

  def buy
  end
  
  def order
  end
 
  def charity
  end

  def map
  end
  
end
