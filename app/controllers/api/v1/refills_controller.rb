class Api::V1::RefillsController < ApplicationController

  def new
    @refill = Refill.new
    @refill.genre = params[:type]
    @bottle = Bottle.find_by_serial(params[:id])
    @refill.bottle_id = @bottle.id
    @refill.save
    render :text => "ok"
  end
  
end
