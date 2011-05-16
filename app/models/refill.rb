class Refill < ActiveRecord::Base
  belongs_to :bottle
  
  attr_accessible :bottle_id, :genre, :created_at
end
