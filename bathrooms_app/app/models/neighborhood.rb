class Neighborhood < ActiveRecord::Base
  has_many :bathrooms dependent: :destroy
end
