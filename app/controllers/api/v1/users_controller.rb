class Api::V1::UsersController < ApplicationController

  def index
    @bottle = Bottle.find_by_serial(params[:id]) 
    @user = @bottle.user
    render :json => @user
  end
  
  
end
