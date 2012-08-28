class User < ActiveRecord::Base
    has_secure_password
    
    attr_accessible :email, :password, :password_confirmation, :address_attributes, :phone
    validates_uniqueness_of :email
    
    has_one :address, :as => :addressable
    accepts_nested_attributes_for :address
    
end
