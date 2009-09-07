require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Donation do
  before(:each) do
    @valid_attributes = {
      :type => "value for type",
      :cents => 1,
      :donor_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Donation.create!(@valid_attributes)
  end
end
