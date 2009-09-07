require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DonationsController do

  def mock_donation(stubs={})
    @mock_donation ||= mock_model(Donation, stubs)
  end

  describe "GET index" do
    it "assigns all donations as @donations" do
      Donation.stub!(:find).with(:all).and_return([mock_donation])
      get :index
      assigns[:donations].should == [mock_donation]
    end
  end

  describe "GET show" do
    it "assigns the requested donation as @donation" do
      Donation.stub!(:find).with("37").and_return(mock_donation)
      get :show, :id => "37"
      assigns[:donation].should equal(mock_donation)
    end
  end

  describe "GET new" do
    it "assigns a new donation as @donation" do
      Donation.stub!(:new).and_return(mock_donation)
      get :new
      assigns[:donation].should equal(mock_donation)
    end
  end

  describe "GET edit" do
    it "assigns the requested donation as @donation" do
      Donation.stub!(:find).with("37").and_return(mock_donation)
      get :edit, :id => "37"
      assigns[:donation].should equal(mock_donation)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created donation as @donation" do
        Donation.stub!(:new).with({'these' => 'params'}).and_return(mock_donation(:save => true))
        post :create, :donation => {:these => 'params'}
        assigns[:donation].should equal(mock_donation)
      end

      it "redirects to the created donation" do
        Donation.stub!(:new).and_return(mock_donation(:save => true))
        post :create, :donation => {}
        response.should redirect_to(donation_url(mock_donation))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved donation as @donation" do
        Donation.stub!(:new).with({'these' => 'params'}).and_return(mock_donation(:save => false))
        post :create, :donation => {:these => 'params'}
        assigns[:donation].should equal(mock_donation)
      end

      it "re-renders the 'new' template" do
        Donation.stub!(:new).and_return(mock_donation(:save => false))
        post :create, :donation => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested donation" do
        Donation.should_receive(:find).with("37").and_return(mock_donation)
        mock_donation.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :donation => {:these => 'params'}
      end

      it "assigns the requested donation as @donation" do
        Donation.stub!(:find).and_return(mock_donation(:update_attributes => true))
        put :update, :id => "1"
        assigns[:donation].should equal(mock_donation)
      end

      it "redirects to the donation" do
        Donation.stub!(:find).and_return(mock_donation(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(donation_url(mock_donation))
      end
    end

    describe "with invalid params" do
      it "updates the requested donation" do
        Donation.should_receive(:find).with("37").and_return(mock_donation)
        mock_donation.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :donation => {:these => 'params'}
      end

      it "assigns the donation as @donation" do
        Donation.stub!(:find).and_return(mock_donation(:update_attributes => false))
        put :update, :id => "1"
        assigns[:donation].should equal(mock_donation)
      end

      it "re-renders the 'edit' template" do
        Donation.stub!(:find).and_return(mock_donation(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested donation" do
      Donation.should_receive(:find).with("37").and_return(mock_donation)
      mock_donation.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the donations list" do
      Donation.stub!(:find).and_return(mock_donation(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(donations_url)
    end
  end

end
