class Neighborhood < ActiveRecord::Base
  has_many :bathrooms, dependent: :destroy
  has_many :users, through: :bathrooms
end
