require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/offers/index.html.erb" do
  include OffersHelper

  before(:each) do
    assigns[:offers] = [
      stub_model(Offer),
      stub_model(Offer)
    ]
  end

  it "renders a list of offers" do
    render
  end
end
