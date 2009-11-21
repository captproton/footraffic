require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/businesses/edit.html.erb" do
  include BusinessesHelper

  before(:each) do
    assigns[:business] = @business = stub_model(Business,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit business form" do
    render

    response.should have_tag("form[action=#{business_path(@business)}][method=post]") do
      with_tag('input#business_name[name=?]', "business[name]")
    end
  end
end
