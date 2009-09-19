require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Donation do
  before(:each) do
    @this = Donation.make_unsaved
  end
  
  it "defaults name to (Anonymous) if not provided" do
    @this.name = ""
    @this.save
    @this.reload
    @this.name.should == "(Anonymous)"
  end
end
