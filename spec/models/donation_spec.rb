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
  
  it "defaults name to (Anonymous) if not provided" do
    @this.name = ""
    @this.save
    @this.reload
    @this.name.should == "(Anonymous)"
  end
end
