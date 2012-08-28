class Listing < ActiveRecord::Base
  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address
  attr_accessible :address_attributes
  
  validates_uniqueness_of :customCode
  
  has_many :amenity_lists
  has_many :amenities, through: :amenity_lists
end