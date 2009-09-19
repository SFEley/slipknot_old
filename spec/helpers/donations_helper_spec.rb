require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DonationsHelper do

  #Delete this example and add some real ones or delete this file
  it "is included in the helper object" do
    included_modules = (class << helper; self; end).send :included_modules
    included_modules.should include(DonationsHelper)
  end
  
  describe "support_this?" do
    before(:each) do
      @podcast = Podcast.make
    end
    
    it "always returns true if this is a new donation" do
      assigns[:donation] = Donation.make_unsaved
      helper.support_this?(@podcast).should be_true
    end
    
    it "returns true if the podcast is included in the donation already" do
      donation = Donation.make
      donation.podcasts << @podcast
      assigns[:donation] = donation
      helper.support_this?(@podcast).should be_true
    end
    
    it "returns false if the podcast was not included in an existing donation" do
      donation = Donation.make
      assigns[:donation] = donation
      helper.support_this?(@podcast).should be_false
    end
    
  end

end
