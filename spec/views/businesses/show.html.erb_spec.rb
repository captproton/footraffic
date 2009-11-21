require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/businesses/show.html.erb" do
  include BusinessesHelper
  before(:each) do
    assigns[:business] = @business = stub_model(Business,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
