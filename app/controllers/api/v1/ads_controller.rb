class Api::V1::AdsController < ApplicationController

  def index
    @bottle = Bottle.find_by_serial(params[:id]) 
    @user = @bottle.user
    AdMailer.interest_email(@user).deliver
    render :text => "ok"
  end
  
end
