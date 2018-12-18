class Pothole < ApplicationRecord

validates :streetAdress, :presence => true
validates :size, :numericality =>{greater_than: 0,less_than_or_equal_to:10}
validates :location, :presence => true
validates :district, :presence => true

has_one :picture
end

