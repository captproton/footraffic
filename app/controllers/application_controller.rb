# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require "rexml/document"
require 'open-uri'
class ApplicationController < ActionController::Base
  
  include AuthenticatedSystem
  
  before_filter :find_location
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def find_location
    doc = REXML::Document.new(open("http://api.foursquare.com/v1/user", :http_basic_authentication=>["sthorpe@gmail.com", "mytruelove"]))
    c = doc.elements.to_a( "//name" )
    @location = c.first.text
  end
end
