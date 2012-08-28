class AmenityList < ActiveRecord::Base
  belongs_to :listing
  belongs_to :amenity
end