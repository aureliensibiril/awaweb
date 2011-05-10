class SessionsController < ApplicationController
  def create
    session[:]
  end

  def destroy
  end

end
