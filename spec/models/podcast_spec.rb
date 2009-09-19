require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Podcast do
  before(:each) do
    @this = Podcast.make_unsaved
  end
  it "can save" do
    @this.save.should be_true
  end
  
  it "requires a name" do
    @this.name = nil
    @this.should_not be_valid
  end
  
  it "requires a URL" do
    @this.url = nil
    @this.should_not be_valid
  end
end