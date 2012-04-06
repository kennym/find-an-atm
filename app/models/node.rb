class Node < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name
  reverse_geocoded_by :latitude, :longitude, :address => :location

  after_validation :reverse_geocode
end
