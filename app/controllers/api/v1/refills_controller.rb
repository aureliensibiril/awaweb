class Api::V1::RefillsController < ApplicationController

  def new
    @refill = Refill.new
    @refill.genre = params[:type]
    @refill.bottle_id = params[:id]
    @refill.save
    render :text => "ok"
  end
  
end
