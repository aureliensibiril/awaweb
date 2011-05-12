class Bottle < ActiveRecord::Base
        belongs_to :user
        has_many :refills
end
