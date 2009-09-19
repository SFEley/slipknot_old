# == Schema Information
#
# Table name: donations
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  cents      :integer
#  donor_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Donation do
  before(:each) do
    @this = Donation.make_unsaved
  end
  
  it "requires a donor" do
    @this.donor = nil
    @this.should_not be_valid
  end
  
  it "requires an amount" do
    @this.amount = nil
    @this.should_not be_valid
  end
  
  it "must not have a zero amount" do
    @this.amount = 0
    @this.should_not be_valid
  end
  
  it "must not have a negative amount" do
    @this.amount = -0.01
    @this.should_not be_valid
  end
  
  it "must have an amount at least one dollar" do
    @this.amount = 0.99
    @this.should_not be_valid
  end
  
  it "accepts amounts of one dollar" do
    @this.amount = 1
    @this.should be_valid
  end
  
  it "sets cents by the amount" do
    @this.amount = 33.40
    @this.cents.should == 3340
  end
  
  it "sets the amount by cents" do
    @this.cents = 1715
    @this.amount.should == 17.15
  end

  describe "podcast allocation" do
    before(:each) do
      3.times {Podcast.make}
      @this.podcasts.clear
    end

    it "defaults to supporting _all_ podcasts if no podcasts are supported" do
      @this.save
      @this.podcasts.count.should == Podcast.count
    end
  end
end
