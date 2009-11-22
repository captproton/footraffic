require "rexml/document"
require 'open-uri'
class Foursquare
  @@attr_names = ["title", "description", "link", "geo_lat", "geo_long"]
  attr_accessor *@@attr_names
  
  def initialize(username, password)
    doc = REXML::Document.new(open("http://api.foursquare.com/v1/user", :http_basic_authentication=>["sthorpe@gmail.com", "mytruelove"]))
    if doc 
      @@attr_names.each do |attr_name|
        if object.has_key?(attr_name.to_sym)
          self.send "#{attr_name}=", object.fetch(attr_name.to_sym)
        end
      end
    end
  end
end
