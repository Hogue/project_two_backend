class Bathroom < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :user
end
