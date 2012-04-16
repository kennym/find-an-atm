class Node < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :in_queue
  reverse_geocoded_by :latitude, :longitude, :address => :location

  validates :name, :latitude, :longitude, :presence => true
  validates :name, :length => { :maximum => 35 }

  after_validation :reverse_geocode
end
