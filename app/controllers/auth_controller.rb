class AuthController < ApplicationController
  
  def login
    if request.post?
      bottle = Bottles.find(params[:num_bottle])
      
      if bottle
        session[:auth] = 1
        session[:user] = bottle.user.id
      else
        # Nothing for now
      end
    
    end
  end

  def logout
    session[:auth] = -2
  end


end
