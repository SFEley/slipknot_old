require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/donations/edit.html.erb" do
  include DonationsHelper

  before(:each) do
    assigns[:donation] = @donation = stub_model(Donation,
      :new_record? => false,
      :type => "value for type",
      :cents => 1,
      :donor_id => 1
    )
  end

  it "renders the edit donation form" do
    render

    response.should have_tag("form[action=#{donation_path(@donation)}][method=post]") do
      with_tag('input#donation_type[name=?]', "donation[type]")
      with_tag('input#donation_cents[name=?]', "donation[cents]")
      with_tag('input#donation_donor_id[name=?]', "donation[donor_id]")
    end
  end
end
