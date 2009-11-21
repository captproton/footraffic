require 'oauth'
class Foursquare
  @@attr_names = ["title", "description", "link", "geo_lat", "geo_long"]
  attr_accessor *@@attr_names
  
  def initialize
    @@attr_names.each do |attr_name|
      self.send "#{attr_name}=", "asdf"
    end
  end
end
