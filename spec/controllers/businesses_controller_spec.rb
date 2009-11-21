require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe BusinessesController do

  def mock_business(stubs={})
    @mock_business ||= mock_model(Business, stubs)
  end

  describe "GET index" do
    it "assigns all businesses as @businesses" do
      Business.stub!(:find).with(:all).and_return([mock_business])
      get :index
      assigns[:businesses].should == [mock_business]
    end
  end

  describe "GET show" do
    it "assigns the requested business as @business" do
      Business.stub!(:find).with("37").and_return(mock_business)
      get :show, :id => "37"
      assigns[:business].should equal(mock_business)
    end
  end

  describe "GET new" do
    it "assigns a new business as @business" do
      Business.stub!(:new).and_return(mock_business)
      get :new
      assigns[:business].should equal(mock_business)
    end
  end

  describe "GET edit" do
    it "assigns the requested business as @business" do
      Business.stub!(:find).with("37").and_return(mock_business)
      get :edit, :id => "37"
      assigns[:business].should equal(mock_business)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created business as @business" do
        Business.stub!(:new).with({'these' => 'params'}).and_return(mock_business(:save => true))
        post :create, :business => {:these => 'params'}
        assigns[:business].should equal(mock_business)
      end

      it "redirects to the created business" do
        Business.stub!(:new).and_return(mock_business(:save => true))
        post :create, :business => {}
        response.should redirect_to(business_url(mock_business))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved business as @business" do
        Business.stub!(:new).with({'these' => 'params'}).and_return(mock_business(:save => false))
        post :create, :business => {:these => 'params'}
        assigns[:business].should equal(mock_business)
      end

      it "re-renders the 'new' template" do
        Business.stub!(:new).and_return(mock_business(:save => false))
        post :create, :business => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested business" do
        Business.should_receive(:find).with("37").and_return(mock_business)
        mock_business.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :business => {:these => 'params'}
      end

      it "assigns the requested business as @business" do
        Business.stub!(:find).and_return(mock_business(:update_attributes => true))
        put :update, :id => "1"
        assigns[:business].should equal(mock_business)
      end

      it "redirects to the business" do
        Business.stub!(:find).and_return(mock_business(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(business_url(mock_business))
      end
    end

    describe "with invalid params" do
      it "updates the requested business" do
        Business.should_receive(:find).with("37").and_return(mock_business)
        mock_business.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :business => {:these => 'params'}
      end

      it "assigns the business as @business" do
        Business.stub!(:find).and_return(mock_business(:update_attributes => false))
        put :update, :id => "1"
        assigns[:business].should equal(mock_business)
      end

      it "re-renders the 'edit' template" do
        Business.stub!(:find).and_return(mock_business(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested business" do
      Business.should_receive(:find).with("37").and_return(mock_business)
      mock_business.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the businesses list" do
      Business.stub!(:find).and_return(mock_business(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(businesses_url)
    end
  end

end
