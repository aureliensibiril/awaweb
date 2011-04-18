class Bottle < ActiveRecord::Base
  
  before_validation :password => "password", :password_confirmation => "password"
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
        :authentication_keys => [:serial] 
        
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :serial, :password, :password_confirmation, :remember_me
end
