require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/offers/new.html.erb" do
  include OffersHelper

  before(:each) do
    assigns[:offer] = stub_model(Offer,
      :new_record? => true
    )
  end

  it "renders new offer form" do
    render

    response.should have_tag("form[action=?][method=post]", offers_path) do
    end
  end
end
