require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/offers/show.html.erb" do
  include OffersHelper
  before(:each) do
    assigns[:offer] = @offer = stub_model(Offer)
  end

  it "renders attributes in <p>" do
    render
  end
end
