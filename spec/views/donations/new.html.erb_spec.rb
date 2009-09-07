require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/donations/new.html.erb" do
  include DonationsHelper

  before(:each) do
    assigns[:donation] = stub_model(Donation,
      :new_record? => true,
      :type => "value for type",
      :cents => 1,
      :donor_id => 1
    )
  end

  it "renders new donation form" do
    render

    response.should have_tag("form[action=?][method=post]", donations_path) do
      with_tag("input#donation_type[name=?]", "donation[type]")
      with_tag("input#donation_cents[name=?]", "donation[cents]")
      with_tag("input#donation_donor_id[name=?]", "donation[donor_id]")
    end
  end
end
