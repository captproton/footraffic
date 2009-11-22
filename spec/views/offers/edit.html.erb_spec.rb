require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/offers/edit.html.erb" do
  include OffersHelper

  before(:each) do
    assigns[:offer] = @offer = stub_model(Offer,
      :new_record? => false
    )
  end

  it "renders the edit offer form" do
    render

    response.should have_tag("form[action=#{offer_path(@offer)}][method=post]") do
    end
  end
end
