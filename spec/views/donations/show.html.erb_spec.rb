require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/donations/show.html.erb" do
  include DonationsHelper
  before(:each) do
    assigns[:donation] = @donation = stub_model(Donation,
      :type => "value for type",
      :cents => 1,
      :donor_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ type/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
