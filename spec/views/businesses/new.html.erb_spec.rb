require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/businesses/new.html.erb" do
  include BusinessesHelper

  before(:each) do
    assigns[:business] = stub_model(Business,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new business form" do
    render

    response.should have_tag("form[action=?][method=post]", businesses_path) do
      with_tag("input#business_name[name=?]", "business[name]")
    end
  end
end
