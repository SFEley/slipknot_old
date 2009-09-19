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

class Donation < ActiveRecord::Base
end
