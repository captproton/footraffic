require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe OffersController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "offers", :action => "index").should == "/offers"
    end

    it "maps #new" do
      route_for(:controller => "offers", :action => "new").should == "/offers/new"
    end

    it "maps #show" do
      route_for(:controller => "offers", :action => "show", :id => "1").should == "/offers/1"
    end

    it "maps #edit" do
      route_for(:controller => "offers", :action => "edit", :id => "1").should == "/offers/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "offers", :action => "create").should == {:path => "/offers", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "offers", :action => "update", :id => "1").should == {:path =>"/offers/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "offers", :action => "destroy", :id => "1").should == {:path =>"/offers/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/offers").should == {:controller => "offers", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/offers/new").should == {:controller => "offers", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/offers").should == {:controller => "offers", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/offers/1").should == {:controller => "offers", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/offers/1/edit").should == {:controller => "offers", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/offers/1").should == {:controller => "offers", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/offers/1").should == {:controller => "offers", :action => "destroy", :id => "1"}
    end
  end
end
