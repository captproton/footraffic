require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/businesses/index.html.erb" do
  include BusinessesHelper

  before(:each) do
    assigns[:businesses] = [
      stub_model(Business,
        :name => "value for name"
      ),
      stub_model(Business,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of businesses" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
