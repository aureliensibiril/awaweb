class DashboardController < ApplicationController

  before_filter :authenticate_user!
   
  def index
    
    @user = current_user
    @validate = FALSE
    if @user.bottles.count > 0
      @validate = TRUE
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
  
end
