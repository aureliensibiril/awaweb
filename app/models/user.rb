class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
  
  has_many :bottles
        
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :surname, :email, :password, :password_confirmation, :remember_me
end
