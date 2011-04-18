class ApplicationController < ActionController::Base
  protect_from_forgery
  
  session :session_key => '_awaweb_session_id'
  
  protected
  
  def authenticate
      if session[:auth] == 1
        true
      else
        redirect_to home_path
        false
      end
  end
  
end
