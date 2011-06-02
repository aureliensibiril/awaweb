class DashboardController < ApplicationController
  #require 'oauth2'

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
    
    @client = OAuth2::Client.new('ZJY05SESKHGDZCUZVL3SMESD3YWRUEGMFPAFLKUNGGUVUZIX', 'WZ0R1KA53LRLPRSOSGOGXZE1DCZGLSMEUUEFHYUQWYN2YFFG',
          :site => ' http://foursquare.com',
          :request_token_path => "/oauth2/request_token",
          :access_token_path  => "/oauth2/access_token",
          :authorize_path     => "/oauth2/authenticate?response_type=code",
          :parse_json => true)
          
    redirect_to @client.web_server.authorize_url(
          :redirect_uri => "http://localhost:3000/oauth2/callback"
        )
    #@client.auth_code.authorize_url(:redirect_uri => 'http://localhost:8080/oauth2/callback')
    # => "https://example.org/oauth/authorization?response_type=code&client_id=client_id&redirect_uri=http://localhost:8080/oauth2/callback"

    #token = @client.auth_code.get_token('authorization_code_value', :redirect_uri => 'http://localhost:8080/oauth2/callback')
    
    #response = token.get('/api/resource', :params => { 'query_foo' => 'bar' })
    #response.class.name
    # => OAuth2::Response
    
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
