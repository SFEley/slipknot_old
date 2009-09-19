module DonationsHelper
  # Returns true if this is a new donation record (we want all boxes checked!), or
  # if the podcast was included in the donation's list of supported podcasts.
  def support_this?(podcast)
    if @donation.new_record?
      true
    end
  end
    
end
