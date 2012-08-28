class Amenity < ActiveRecord::Base
  has_many :amenity_lists
  has_many :listings, through: :amenity_lists
end
