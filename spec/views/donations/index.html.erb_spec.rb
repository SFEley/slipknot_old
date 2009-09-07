require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/donations/index.html.erb" do
  include DonationsHelper

  before(:each) do
    assigns[:donations] = [
      stub_model(Donation,
        :type => "value for type",
        :cents => 1,
        :donor_id => 1
      ),
      stub_model(Donation,
        :type => "value for type",
        :cents => 1,
        :donor_id => 1
      )
    ]
  end

  it "renders a list of donations" do
    render
    response.should have_tag("tr>td", "value for type".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
